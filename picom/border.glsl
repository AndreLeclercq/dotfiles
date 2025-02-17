#version 330

in vec2 texcoord;
uniform sampler2D tex;
uniform float opacity;
uniform float time;

vec4 default_post_processing(vec4 c);

// Paramètres de la bordure
const float BORDER_WIDTH = 4.0;      // Épaisseur totale de la bordure
const float BORDER_OVERLAP = 1.0;    // Combien de pixels dépassent à l'extérieur
const vec4 BORDER_COLOR = vec4(1.0, 0.2, 0.2, 1.0);  // Rouge
const float BORDER_OPACITY = 1.0;
const float CORNER_RADIUS = 15.0;    // Correspond à votre shadow-radius

float sdRoundedBox(vec2 p, vec2 size, float r) {
    // Assure que le rayon n'est pas plus grand que la moitié de la plus petite dimension
    r = min(r, min(size.x, size.y));
    vec2 d = abs(p) - size + vec2(r);
    return length(max(d, 0.0)) + min(max(d.x, d.y), 0.0) - r;
}

vec4 window_shader() {
    vec2 texsize = textureSize(tex, 0);
    vec2 uv = texcoord / texsize;
    vec4 color = texture2D(tex, uv);
    
    // Calcule la position relative au centre
    vec2 pos = (texcoord - 0.5 * texsize);
    vec2 windowSize = 0.5 * texsize;
    
    // Calcule la distance au bord avec le corner radius correct
    float d = sdRoundedBox(pos, windowSize, CORNER_RADIUS);
    
    // Crée une bordure fine qui suit exactement le corner radius
    float borderMask = 1.0 - step(BORDER_WIDTH, abs(d - BORDER_OVERLAP));
    
    // Applique la bordure seulement si nous avons du contenu ou si nous sommes sur la bordure
    if (color.a > 0.0 || d > -BORDER_WIDTH) {
        vec4 borderColor = BORDER_COLOR;
        borderColor.a *= BORDER_OPACITY;
        
        // Mélange la couleur uniquement sur la bordure
        color = mix(color, borderColor, borderMask);
        
        // Assure que la bordure externe est visible
        color.a = max(color.a, borderMask * BORDER_OPACITY);
    }
    
    // Applique l'opacité globale
    color.a *= opacity;
    
    return default_post_processing(color);
}

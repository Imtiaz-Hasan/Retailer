{!! BaseHelper::googleFonts('https://fonts.googleapis.com/' . sprintf(
        'css2?family=%s:wght@300;400;500;600;700&family=%s:wght@400;700&family=%s&display=swap',
        urlencode($primaryFont = theme_option('primary_font', 'Roboto')),
        urlencode(theme_option('heading_font', 'Charm')),
        urlencode(theme_option('heading_font_2', 'Oregano'))
    )) !!}

<style>
    :root {
        --primary-color: {{ $primaryColor = theme_option('primary_color', '#0989ff') }};
        --primary-color-rgb: {{ implode(',', BaseHelper::hexToRgb($primaryColor)) }};
        --primary-font: '{{ $primaryFont }}', sans-serif;
    }
</style>

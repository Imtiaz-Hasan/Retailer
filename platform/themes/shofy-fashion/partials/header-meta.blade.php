<link href="{{ BaseHelper::getGoogleFontsURL(sprintf('css2?family=%s:wght@300;400;500;600;700', $primaryFont = theme_option('primary_font', 'Jost'))) }}" rel="stylesheet">
<link href="{{ BaseHelper::getGoogleFontsURL(sprintf('css2?family=Charm:wght@400;700&family=Oregano')) }}" rel="stylesheet">

<style>
    :root {
        --primary-color: {{ $primaryColor = theme_option('primary_color', '#821F40') }};
        --primary-color-rgb: {{ implode(',', BaseHelper::hexToRgb($primaryColor)) }};
        --primary-font: '{{ $primaryFont }}', sans-serif;
    }
</style>

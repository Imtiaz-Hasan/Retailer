@php
    $style ??= 'default';
@endphp

@if(theme_option('section_title_shape_decorated', true))
    @switch($style)
        @case('default')
            <svg width="114" height="35" viewBox="0 0 114 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M112 23.275C1.84952 -10.6834 -7.36586 1.48086 7.50443 32.9053" stroke="currentColor" stroke-width="4" stroke-miterlimit="3.8637" stroke-linecap="round"/>
            </svg>

            @break

        @case('small')
            <svg width="64" height="20" viewBox="0 0 64 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M62 13.1107C1.91792 -5.41202 -3.10865 1.22305 5.00242 18.3636" stroke="currentColor" stroke-width="3" stroke-miterlimit="3.8637" stroke-linecap="round"/>
            </svg>

            @break

        @case(3)
            <svg width="82" height="22" viewBox="0 0 82 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M81 14.5798C0.890564 -8.05914 -5.81154 0.0503902 5.00322 21" stroke="currentColor" stroke-opacity="0.3" stroke-width="2" stroke-miterlimit="3.8637" stroke-linecap="round" />
            </svg>

            @break
    @endswitch
@endif

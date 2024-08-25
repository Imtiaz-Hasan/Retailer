@php
    $footerPrimarySidebar = dynamic_sidebar('footer_primary_sidebar');
    $footerBottomSidebar = dynamic_sidebar('footer_bottom_sidebar');
@endphp

{!! dynamic_sidebar('footer_top_sidebar') !!}

<footer>
    <div class="tp-footer-area" data-bg-color="footer-bg-grey">
        @if($footerPrimarySidebar)
            <div class="pb-40 tp-footer-top pt-95">
                <div class="container">
                    <div class="row">
                        {!! $footerPrimarySidebar !!}
                    </div>
                </div>
            </div>
        @endif
        @if ($footerBottomSidebar)
            <div class="tp-footer-bottom">
                <div class="container">
                    <div class="tp-footer-bottom-wrapper" @if(! $footerPrimarySidebar) style="border-top: 0" @endif>
                        <div class="row align-items-center">
                            {!! $footerBottomSidebar !!}
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
</footer>

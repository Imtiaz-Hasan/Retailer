@php
    Theme::layout('full-width');
@endphp

<section class="tp-order-area pb-160">
    <div class="container">
        <div class="tp-order-inner">
            <div class="tp-order-info-wrapper">
                {!! $form->renderForm() !!}
            </div>
        </div>

        @include('plugins/ecommerce::themes.includes.order-tracking-detail')
    </div>
</section>

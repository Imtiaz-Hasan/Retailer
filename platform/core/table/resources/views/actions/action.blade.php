@php
    /** @var Botble\Table\Actions\Action $action */
@endphp

<a
@if (!$action->getAttribute('class'))
    @class([
        'btn',
        'btn-sm',
        'btn-icon' => $action->hasIcon(),
        $action->getColor(),
    ])
    @endif
    @include('core/table::actions.includes.action-attributes')
>
    @include('core/table::actions.includes.action-icon')

    <span
        @class(['sr-only' => $action->hasIcon()])
        @if($bsToggle = $action->getAttribute('data-bs-toggle'))
            data-bs-toggle="{{ $bsToggle }}"
        @endif
        @if($bsTarget = $action->getAttribute('data-bs-target'))
            data-bs-target="{{ $bsTarget }}"
        @endif
    >{{ $action->getLabel() }}</span>
</a>

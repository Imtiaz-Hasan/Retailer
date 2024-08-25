@if ($action->hasIcon())
    @if ($action->isRenderabeIcon())
        {!! BaseHelper::clean($action->getIcon()) !!}
    @else
        <x-core::icon
            :name="$action->getIcon()"
            :data-bs-toggle="$action->getAttribute('data-bs-toggle')"
            :data-bs-target="$action->getAttribute('data-bs-target')"
        />
    @endif
@endif

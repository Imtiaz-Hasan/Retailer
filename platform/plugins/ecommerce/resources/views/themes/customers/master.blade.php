<div class="customer-page crop-avatar">
    <div class="container">
        <div class="customer-body">
            <div class="row body-border">
                <div class="col-md-3">
                    <div class="profile-sidebar">
                        <div class="profile-usermenu">
                            <ul class="list-group">
                                @foreach (DashboardMenu::getAll('customer') as $item)
                                    @continue(! $item['name'])

                                    <li class="list-group-item text-truncate">
                                        <x-core::icon :name="$item['icon']" />
                                        <a
                                            @class(['collection-item', 'active' => $item['active']])
                                            href="{{ $item['url'] }}"
                                            title="{{ $item['name'] }}"
                                        >
                                            {{ $item['name'] }}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                    </div>
                </div>

                <div class="col-md-9">
                    <div class="profile-content">
                        @yield('content')
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

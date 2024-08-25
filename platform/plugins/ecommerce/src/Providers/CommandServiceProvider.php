<?php

namespace Botble\Ecommerce\Providers;

use Botble\Ecommerce\Commands\BulkImportProductCommand;
use Botble\Ecommerce\Commands\SendAbandonedCartsEmailCommand;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Support\ServiceProvider;

class CommandServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        if (! $this->app->runningInConsole()) {
            return;
        }

        $this->commands([
            SendAbandonedCartsEmailCommand::class,
            BulkImportProductCommand::class,
        ]);

        $this->app->afterResolving(Schedule::class, function (Schedule $schedule) {
            $schedule->command(SendAbandonedCartsEmailCommand::class)->weekly();
        });
    }
}

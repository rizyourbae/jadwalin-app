<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Auth\Events\Login;
use Illuminate\Support\Facades\Event;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // --- LETAKKAN KODE LISTENER DI SINI ---
        Event::listen(Login::class, function (Login $event) {
            $user = $event->user;

            if ($user->hasRole('mahasiswa')) {
                session(['url.intended' => route('mahasiswa.dashboard')]);
            } else {
                session(['url.intended' => '/admin']);
            }
        });
    }
}

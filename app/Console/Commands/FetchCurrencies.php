<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use MyApp\Services\CurrencyService;

class FetchCurrencies extends Command {

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'currency:fetch';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Pobieranie informacji o aktualnych walutach';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    private $currencyService;

    public function __construct(CurrencyService $currencyService) {
        parent::__construct();
        $this->currencyService = $currencyService;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle() {

        $this->currencyService->saveInformationAboutCurrency();
    }

}

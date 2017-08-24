<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use MyApp\Services\CurrencyService;

class PagesController extends Controller {

    private $currencyService;

    public function __construct(CurrencyService $currencyService) {
        $this->currencyService = $currencyService;
    }

    public function getInformationAboutCurrencies() {

        $currencies = $this->currencyService->getInformationAboutCurrencies();
        if ($currencies->isEmpty()) {
            return redirect('/home')->with('status', 'Brak danych');
        }


        return view('pages/info')->with('currencies', $currencies);
    }

    public function getIndex() {

        return view('pages/welcome');
    }

}

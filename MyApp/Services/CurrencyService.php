<?php

namespace MyApp\Services;

use MyApp\Entities\Currency;

class CurrencyService {

    private $currnecies;

    public function __construct() {
        date_default_timezone_set('Europe/Warsaw');
    }

    public function getInformationAboutCurrencies() {
        $currencies = Currency::orderBy('name')->paginate(15);
        return $currencies;
    }

    public function saveInformationAboutCurrency() {
        $this->getCurrencies();
        $this->saveCurrencies();
    }

    public function getCurrencies() {
        $urlApi = env('API_URL');

        $ch = curl_init($urlApi);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        $this->currnecies = curl_exec($ch);
        curl_close($ch);
    }

    public function saveCurrencies() {
        $now = (new \DateTime())->format('Y-m-d H:i:s');       
        $currnecies = json_decode($this->currnecies, true);
        foreach ($currnecies[0]['rates'] as $value) {
            Currency::updateOrCreate(['name' => $value['currency'], 'code' => $value['code']], ['mid' => $value['mid'] , 'updated_at' => $now]);
        }
    }

}


@extends('layouts.app')

@section('content')
   <div classs="row">
        <div class="center">
      <table class="table">
  <thead class="thead-inverse">
            
    <tr>
     
      <th>Waluta</th>
      <th>Trzyliterowy kod waluty</th>
      <th>Przeliczony kurs średni waluty</th>
      <th>Data aktualizacji</th>
    </tr>
  </thead>
  <tbody>
        @foreach ($currencies as $key => $currency)
    <tr>
  
      <td>{{$currency['name']}}</td>
      <td>{{$currency['code']}}</td>
      <td>{{$currency['mid']}}</td>
      <td>{{$currency['updated_at']}}</td>
    </tr>
         @endforeach

  </tbody>
</table>
            <div class="centerField">
    {{ $currencies->links() }}
            </div>
</div>
</div>





  @endsection


  
 


   
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
   @include('partials.header') 
</head>
<body>
    <div id="app">
        @include('partials.navbar') 

        @yield('content')
    </div>
@include('partials.scripts') 
    
</body>
</html>

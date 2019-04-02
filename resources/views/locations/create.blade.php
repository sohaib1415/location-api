@php
use App\Model\Town;
use App\Model\Area;
@endphp
<fieldset>
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <legend>Add Location</legend>
</fieldset>
<hr>

<form class="validate form-horizontal form_wrp" role="form" method="POST" name="{{ route('location.store') }}" action="{{ route('location.store') }}">
    {{ csrf_field() }}
    @php $area_model = Area::pluck('title', 'id'); @endphp
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town"><h4>Area</h4></label>
            <select name="area_id" class="form-control">
                <option value="">Select...</option>
                @foreach ($area_model as $area_id => $area_title)
                    <option value="{{ $area_id }}">{{ $area_title }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town_title"><h4>Number</h4></label>
            <input type="text" class="form-control" name="number" id="number" placeholder="title" title="enter number of the area">
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town_title"><h4>Letter</h4></label>
            <input type="text" class="form-control" name="letter" id="letter" placeholder="Letter" title="enter letter of the area">
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town_title"><h4>Longitude</h4></label>
            <input type="text" class="form-control" name="longitude" id="longitude" placeholder="longitude" title="enter longitude of the area">
        </div>
    </div>
    <div class="form-group">
        <div class="col-xs-6">
            <label for="town_title"><h4>Latitude</h4></label>
            <input type="text" class="form-control" name="latitude" id="latitude" placeholder="latitude" title="enter latitude of the area">
        </div>
    </div>
    {{-- <div class="form-group">
        <div class="col-xs-6">
            <label for="town_description"><h4>Description</h4></label>
            <input type="text" class="form-control" name="description" id="description" placeholder="description" title="enter your description of the town if any.">
        </div>
    </div> --}}
    <div class="form-group">
        <div class="col-xs-12">
            <br />
            <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
            <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
        </div>
    </div>

</form>
<hr>


{{-- {!! Form::open(['method'=>"POST", 'url' => route('add-town'), 'class' => 'form-horizontal']) !!} --}}
{{-- {!! Form::close()  !!} --}}

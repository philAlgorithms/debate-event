<div class="card schedule-card-alt w-100 mh-100 rounded-lg">
    <div class="card-body px-0">
      <h1 class="card-title text-cyan">{{ $month }}<br/>{{ $day }}</h1>
      <ul class="text-white activities">
	@foreach ($activities as $activity)
        <li class="card-text activity">{{ $activity->title }}</li>
        @endforeach
      </ul>
    </div>
  </div>

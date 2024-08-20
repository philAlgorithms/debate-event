<section id="event-schedule" class="event-schedule mt-5">
    <div class="container position-relative">
        <div class="row text-center text-white fw-800">
            <h1 class="display-3">Event Schedule</h1>
	</div>
	<div class="row d-flex activities">
	@foreach ($eventDays as $day)
	    <div class="col-6 col-sm-6 col-md-4 col-lg-3 activity">
		<x-card.event.schedule-alt
		    :month="date('M', strtotime($day->date))"
		    :day="date('d', strtotime($day->date))"
		    :activities="$day->activities"
		    :color="$day->color"
		    />
	    </div>
	@endforeach
	</div>
    </div> 
</section>

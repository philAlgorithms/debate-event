<svg viewBox="0 0 105 100">
    <defs>
	<style>
	    @import url("https://fonts.googleapis.com/css2?family=Fugaz+One&display=swap");

	    .brand {
		font-size: 6.625rem;
	    }
	</style>
	<linearGradient id="primary">
	    <stop stop-color="#27668b"></stop>
	</linearGradient>
	<linearGradient id="light">
	    <stop stop-color=" #6db094"></stop>
	</linearGradient>
	<linearGradient id="secondary">
	    <stop stop-color="#4e5da5"></stop>
	</linearGradient>

	<linearGradient id="background" gradientUnits="userSpaceOnUse" gradientTransform="rotate(45 55,50)">
      <stop  offset="0" style="stop-color:#4e5da5"/>
      <stop  offset="0.3" style="stop-color:#27668b"/>
      <stop  offset="0.85" style="stop-color:#6db094"/>
      <!--<stop  offset="1" style="stop-color:#4e5da5"/>-->
    </linearGradient>
    </defs>

    <g id="curves" fill="black" class="d-none">
	<path id="boot"
	    d="M17,77 C17,77 32,105 30,130 
		C30,130 50,99 132,90 
		M132,90 C85,73 41,105 17,77">
	</path>
	<path id="hoop"
	    d="M90,71 C90,71 364,-80 562,77 
		L529,83 C529,83 390,-40, 90,71">
	</path>
	<path id="front"
	    d="M481,103 C481,103 662,12 809,153
		C760,175 688,39 481,103">
	</path>
    </g>
    <path id="check" fill="url(#red)" class="d-none"
	d="M234,42 C160,70 238,70 431,77
	    M431,77 C234,86 110,75 234,42">
    </path>
    <g id="text" class="d-none">
	<text class="brand text--emzy" font-family="Fugaz One" x="37" y="200" fill="url(#red)">
	    EMZY
	</text>
	<text class="brand text--autos" font-family="Fugaz One" x="336" y="200">
	    AUTOS
	</text>
    </g>

    <g id="logo">
	<path 
	    d="M 55,50 m 0, 50 a 50,50 180 0,0 0,-100
		H0 V100"
	    fill="url(#background)"
	/>
	<path d="M21.9126,59.0587 Q55,73 53,40  C54,25 62,31 69.7916,18.2792"  stroke="white" stroke-width="5.5" fill="none" />
	<path d="M21.9126,59.0587 C73,73 41,35 55,28 Q62,28 69.7916,18.2792"  stroke="white" stroke-width="5.5" fill="none" class="d-none" />
	<path d="M67.5,81.667 C57,62 70,71 70.5,55 C73,45 67,40 84.8892,36.029"  stroke="white" stroke-width="5.5" fill="none" />
	<circle cx="55" cy="50" r="35" stroke="white" stroke-width="6.25" fill="none" />
    </g>
</svg>

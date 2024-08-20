<x-layout.main>
    <x-navigation.navbar />
    <x-section.hero />
    <x-section.meet />
    <x-section.attend />
    <!-- <x-section.contact /> -->
    <x-section.about />
    <x-section.conference id="conference" />
    <x-section.special-guests />
    <x-section.schedule :eventDays=$event_days/>
    <x-section.partners />
    <!-- <x-section.ctr /> -->
    <!-- <x-section.prizes /> -->
    <x-navigation.footer />
</x-layout.main>

function generateTrip(name, start, end, rawDate, size, maxSize, price) {
	let date = new Date(parseFloat(rawDate));
	let hourLabel = "AM";
	let hour = date.getHours();
	if (hour > 12) {
		hour = hour - 12;
		hourLabel = "PM";
	}

	return (`<div class="result-info">
				<div class="sub-heading">${name}</div>
				<img src="/images/divider.png" style="height: 3px; width: auto;" />
				<div>
					<i class="fas fa-map-marker-alt icon-label-small"></i>
						${start} - ${end}
				</div>
				<div>
					<i class="fas fa-calendar icon-label-small"></i>
						${months[date.getMonth()]} ${date.getDate()}, ${date.getFullYear()}
					<i class="fas fa-clock icon-label-small"></i>
						${hour}:${date.getMinutes()} ${hourLabel}
				</div>
				<div>
					<i class="fas fa-users icon-label-small"></i>
						${size} / ${maxSize}
						<i class="fas fa-dollar-sign icon-label-small"></i>
						${price}
				</div>
			</div>`)
}
<#assign content>

<div class="trip-info-wrapper">
    <div class="trip-info">
        <i class="fas fa-dot-circle icon-label-small"></i>
            <span id="start" style="font-size: 25px; margin-left: 5px;">Boston</span>
        <img src="/images/divider.png" style="height: 4px; margin: 0px 10px; width: auto;" />
        <i class="fas fa-map-marker-alt icon-label-small"></i>
            <span id="end" style="font-size: 25px; margin-left: 5px;">Cambridge</span>
    </div>
    <span id="date" style="font-size: 18px;">Mar 14 2019</span> at
    <span id="time" style="font-size: 18px;">1:59 PM</span>
</div>

<div class="results-container">
    <div class="results-content">
        <div class="thresholds">
            <div style="display: flex; align-items: center; flex-direction: column;">
                <span style="margin-bottom: 10px;">Walking Time</span>
                <div><i class="fas fa-walking icon-label-large"></i>
                <input class="threshold-input" id="walking-input" value="30" min="0" max="3600" type="number" placeholder="..." />min</div>
            </div>
            <div style="display: flex; align-items: center; flex-direction: column;">
                <span style="margin-bottom: 10px;">Departure Threshold</span>
                <div><i class="far fa-circle icon-label-large"></i>
                <input class="threshold-input" id="walking-input" value="15" min="0" max="3600" type="number" placeholder="..." />min</div>
            </div>
            <div style="margin-top: 10px; max-width: 300px; width: auto; font-size: 14px;">
                Walking radius is how long you are willing to walk to the departure location. Departure threshold is within how many minutes of your departure time you are willing to leave.
            </div>
        </div>
    </div>
</div>

<script src="/js/external/jquery-3.1.1.js"></script>
<script src="/js/results.js"></script>

</#assign>
<#include "main.ftl">
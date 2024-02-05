window.addEventListener('message', function(event) {
    if (event.data.action === 'show') {
        var title = document.getElementById('mission-title');
        var content = document.getElementById('mission-content');
        
        if (event.data.title) title.innerHTML = event.data.title;
        if (event.data.content) content.innerHTML = event.data.content;

        if (event.data.title) title.style.display = 'block';
        if (event.data.content) {
            content.style.display = 'block';
        } else {
            content.style.display = 'none';
        }
        document.getElementById('mission-ui').style.display = 'block';
    } else if (event.data.action === 'edit') {
        if (event.data.title) {
            var title = document.getElementById('mission-title');
            title.innerHTML = event.data.title;
            title.style.display = 'block';
        }

        if (event.data.content) {
            var content = document.getElementById('mission-content');
            content.innerHTML = event.data.content;
            content.style.display = 'block';
        }
    } else if (event.data.action === 'hide') {
        document.getElementById('mission-ui').style.display = 'none';
    }
});
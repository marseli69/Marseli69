<!DOCTYPE html>
<html>
<head>
  <title>Kamera</title>
</head>
<body>
  <h1>Hap Kamera</h1>
  <video id="video" autoplay playsinline width="100%"></video>
  <button onclick="takePhoto()">Bëj Foto</button>
  <script>
    const video = document.getElementById('video');
    navigator.mediaDevices.getUserMedia({ video: true })
      .then(stream => video.srcObject = stream)
      .catch(err => alert('Gabim: ' + err));
      
    function takePhoto() {
      const canvas = document.createElement('canvas');
      canvas.width = video.videoWidth;
      canvas.height = video.videoHeight;
      canvas.getContext('2d').drawImage(video, 0, 0);
      const imageUrl = canvas.toDataURL('image/png');
      window.open(imageUrl);
    }
  </script>
</body>
</html>


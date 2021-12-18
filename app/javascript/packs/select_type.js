;(function() {
  function DropMenu() {}

  DropMenu.prototype = {
    init: function() {
      document.querySelector('.drop-menu ul').style.display = 'none';
      document.querySelector('.drop-menu > a').addEventListener('click', this.toggle, false);
    },
    toggle: function() {
      this.parentNode.classList.toggle('active');
    }
  };

  var dropMenu = new DropMenu();
  dropMenu.init();
})();

(function () {
  function copyAttribute(element, oldName, newName) {
    if (element.hasAttribute(oldName) && !element.hasAttribute(newName)) {
      element.setAttribute(newName, element.getAttribute(oldName));
    }
  }
  function applyShim() {
    document.querySelectorAll('[data-toggle]').forEach(function (el) { copyAttribute(el, 'data-toggle', 'data-bs-toggle'); });
    document.querySelectorAll('[data-target]').forEach(function (el) { copyAttribute(el, 'data-target', 'data-bs-target'); });
    document.querySelectorAll('[data-dismiss]').forEach(function (el) { copyAttribute(el, 'data-dismiss', 'data-bs-dismiss'); });
    document.querySelectorAll('[data-parent]').forEach(function (el) { copyAttribute(el, 'data-parent', 'data-bs-parent'); });
    document.querySelectorAll('.modal [data-dismiss="modal"]').forEach(function (el) { if (!el.hasAttribute('data-bs-dismiss')) el.setAttribute('data-bs-dismiss', 'modal'); });
    document.querySelectorAll('.alert [data-dismiss="alert"]').forEach(function (el) { if (!el.hasAttribute('data-bs-dismiss')) el.setAttribute('data-bs-dismiss', 'alert'); });
    document.querySelectorAll('.dropdown-toggle[data-toggle="dropdown"]').forEach(function (el) { if (!el.hasAttribute('data-bs-toggle')) el.setAttribute('data-bs-toggle', 'dropdown'); });
    document.querySelectorAll('[data-toggle="collapse"]').forEach(function (el) { if (!el.hasAttribute('data-bs-toggle')) el.setAttribute('data-bs-toggle', 'collapse'); copyAttribute(el, 'data-target', 'data-bs-target'); });
    if (window.bootstrap) {
      document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(function (el) { if (!bootstrap.Tooltip.getInstance(el)) new bootstrap.Tooltip(el); });
      document.querySelectorAll('[data-bs-toggle="popover"]').forEach(function (el) { if (!bootstrap.Popover.getInstance(el)) new bootstrap.Popover(el); });
    }
  }
  document.addEventListener('DOMContentLoaded', applyShim);
  if (window.Sys && Sys.WebForms && Sys.WebForms.PageRequestManager) {
    try { Sys.WebForms.PageRequestManager.getInstance().add_endRequest(applyShim); } catch (e) {}
  }
  window.RockBootstrap3Compatibility = { refresh: applyShim };
})();

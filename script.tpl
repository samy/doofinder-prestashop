{if isset($script)}
  <!-- START OF DOOFINDER SCRIPT -->
  {$script|html_entity_decode}
  <!-- END OF DOOFINDER SCRIPT -->
{/if}

{if isset($extra_css)}
  <!-- START OF DOOFINDER CSS -->
  {$extra_css}
  <!-- END OF DOOFINDER CSS -->
{/if}
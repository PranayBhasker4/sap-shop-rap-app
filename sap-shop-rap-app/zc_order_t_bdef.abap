projection implementation in class ZBP_C_ORDER_T unique;
strict ( 2 );
extensible;
use draft;
use side effects;
define behavior for ZC_ORDER_T alias orders
extensible
use etag
{
  use create;
  use update;
  use delete;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;

}
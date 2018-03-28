{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				<div class="footer-container">
					<footer id="footer"  class="container">
						<div class="row">{$HOOK_FOOTER}</div>
					</footer>
				</div><!-- #footer -->
			{/if}
		</div><!-- #page -->
{/if}

<div class="modal fade" id="ageModal" tabindex="-1" role="dialog" style="z-index:6000">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Bienvenue sur MCASH</h4>
			</div>
			<div class="modal-body">
				<p>Bienvenue sur la boutique MeyjeCorp, la référence de vente en semi-gros et gros en France !</p>
				<p>Nous sommes obligés de vous poser la question suivante :</p>
				<p>Confirmez-vous être majeur ?</p>
			</div>
			<div class="modal-footer">
				<button type="button" id="ageModal--yes" class="btn btn-success" data-dismiss="modal">Oui</button>
				<button type="button" id="ageModal--no" class="btn btn-warning">Non</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>

	function AgeModal() {
	    this._LOCAL_STORAGE_KEY = '_AGE_MODAL';
	    this._HTML_ID = '#ageModal';
		$(this._HTML_ID).on('hidden.bs.modal', this.onModalHide.bind(this))
    }

    AgeModal.prototype.show = function() {
	    if (this.agreementWasSaved()) {
	        return;
        }
        $(this._HTML_ID).modal('show');
    };

    AgeModal.prototype.agreementWasSaved = function() {
        return null !== localStorage.getItem(this._LOCAL_STORAGE_KEY)
    };

	AgeModal.prototype.onModalHide = function() {
	    localStorage.setItem(this._LOCAL_STORAGE_KEY, 'true');
    };


    $(document).ready(function(){
		var ageModal = new AgeModal();
		ageModal.show();
	});

</script>

{include file="$tpl_dir./global.tpl"}
	</body>
</html>

{include file='redirect.tpl'}
{assign var="htmlTitle" value="{#omegaupTitleContest#}"}
{include file='head.tpl'}
{include file='mainmenu.tpl'}
{include file='status.tpl'}

{if not isset($smarty.session.contributeAlert) and $LOGGED_IN eq 1 and $CURRENT_USER_PRIVATE_CONTESTS_COUNT gt 0}
	<div class="alert alert-info">
		<span class="message">
            {#messageMakeYourContestsPublic#}
		</span>
	</div>
{/if}

{if not isset($smarty.session.contributeAlert) and $LOGGED_IN eq 1 and $CURRENT_USER_PRIVATE_PROBLEMS_COUNT gt 0}
	<div class="alert alert-info">
		<span class="message">			
            {#messageMakeYourProblemsPublic#}
		</span>
	</div>
{/if}

<div class="panel panel-default">
	<div class="panel-body">
		<div class="bottom-margin">
			<a href="/contestcreate.php" class="btn btn-primary" id="contest-create">{#contestsCreateNew#}</a>
			<a href="/scoreboardmerge.php" class="btn btn-default" id="scoreboard-merge">{#contestsJoinScoreboards#}</a>
		</div>

		<div id="parent_contest_list">
			{include file='contest.list.tpl'}
		</div>
	</div>
</div>

<script>
	$(".navbar #nav-contests").addClass("active");
</script>
	
{include file='footer.tpl'}

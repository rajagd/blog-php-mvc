<?php $title = 'Inscription - JEAN FORTEROCHE'; ?>
<?php ob_start(); ?>
<div>
	<div align="center">
		<h2>Inscription</h2>
		<a href="">Vous avez dèja un compte?</a>
		<br>
		<br>
	<form action="" method="POST">
            <div class="form-group">
                <label for="pseudo">Pseudo</label>
                <br />
                <input type="text" placeholder="Choisissez un pseudo" id="pseudo" name="pseudo" required aria-required="true"/>
                <br />
            </div>
            <div class="form-group">
                <label for="email">E-mail</label>
                <br />
                <input type="email" placeholder="Votre adresse email" id="mail" name="mail" required aria-required="true"/>
                <br />
            </div>
            <div class="form-group">
                <label for="password">Mot de passe</label>
                <br />
                <input type="password" placeholder="Votre mot de passe" id="mdp" name="mdp" required aria-required="true" />
                <br />
                
            </div><br /><br />
			<button type="submit" name="" class="btn btn-primary">Inscription</button>
        </form>
	
</div>
</div>
<br /><br />
<?php $content = ob_get_clean(); ?>
<?php require('userTemplate.php'); ?>

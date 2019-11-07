<script>
	import Shuffle from 'shufflejs';
	import { onMount } from 'svelte'

	let name = 'world';

	onMount(() => {
		const shuffleInstance = new Shuffle(document.querySelector('.my-shuffle'), {
			itemSelector: '.js-item',
			sizer: '.my-sizer-element',
			buffer: 1,
		});
		setTimeout(() => {
			shuffleInstance.filter('space');
		}, 2000)
	})

	const g = JSON.stringify([]);
	const gg = JSON.stringify(['space']);
</script>


<style>

	/* quick grid */
	.container {
		width: 93%;
		margin: auto;
	}

	/* Bootstrap-style columns */
	.column {
		position: relative;
		float: left;
		min-height: 1px;
		width: 25%;
		padding-left: 4px;
		padding-right: 4px;

		/* Space between tiles */
		margin-top: 8px;
	}

	.col-span {
		width: 50%;
	}

	.my-sizer-element {
		width: 8.33333%;
	}

	/* default styles so shuffle doesn't have to set them (it will if they're missing) */
	.my-shuffle {
		position: relative;
		overflow: hidden;
	}

	/* Ensure images take up the same space when they load */
	/* https://vestride.github.io/Shuffle/images */
	.aspect {
		position: relative;
		width: 100%;
		height: 0;
		padding-bottom: 100%;
		overflow: hidden;
	}

	.aspect__inner {
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
	}

	.aspect--16x9 {
		padding-bottom: 56.25%;
	}

	.aspect--9x80 {
		padding-bottom: calc(112.5% + 8px);
	}

	.aspect--32x9 {
		padding-bottom: calc(28.125% - 3px);
	}

	img {
		display: block;
		width: 100%;

		max-width: none;
		height: 100%;
		object-fit: cover;
	}

	/* Small reset */
	*,
	::before,
	::after {
		box-sizing: border-box;
	}

	figure {
		margin: 0;
		padding: 0;
	}
</style>

<h1>Hello {name}!</h1>


<div class="container">
	<h1><a href="https://vestride.github.io/Shuffle/" target="_blank" rel="noopener">Shuffle</a>Template</h1>
	<div class="js-grid my-shuffle">
		<figure class="js-item column" data-groups={g}>
			<div class="aspect aspect--16x9">
				<div class="aspect__inner"><img src="https://images.unsplash.com/uploads/1413142095961484763cf/d141726c?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=600&amp;h=338&amp;fit=crop&amp;s=86dc2dcb74588b338dfbb15d959c5037" obj.alt="obj.alt"/></div>
			</div>
		</figure>
		<figure class="js-item column" data-groups={gg}>
			<div class="aspect aspect--16x9">
				<div class="aspect__inner"><img src="https://images.unsplash.com/photo-1465414829459-d228b58caf6e?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=600&amp;h=338&amp;fit=crop&amp;s=7ab1744fe016fb39feb2972244246359" obj.alt="obj.alt"/></div>
			</div>
		</figure>
	</div>
</div>

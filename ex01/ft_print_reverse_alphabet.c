/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_reverse_alphabet.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rboivin <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/01 05:37:02 by rboivin           #+#    #+#             */
/*   Updated: 2018/08/02 04:50:40 by rboivin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

void	ft_print_reverse_alphabet(void)
{
	char c;

	c = 'z';
	while (c >= 'a')
	{
		ft_putchar(c);
		c--;
	}
}

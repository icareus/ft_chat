/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/30 07:08:05 by abarbaro          #+#    #+#             */
/*   Updated: 2015/01/03 20:26:29 by abarbaro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

int		ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	i = 0;
	while ((s1 && s2) && (s1[i] || s2[i]) && i < n)
	{
		if (s1[i] != s2[i])
		{
			if (((s1[i]) - (s2[i])) < -127)
				return (1);
			return ((int)((s1[i]) - (s2[i])));
		}
		i++;
	}
	return (0);
}

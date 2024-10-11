/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: miaviles <miaviles@student.42madrid>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/26 17:32:43 by miaviles          #+#    #+#             */
/*   Updated: 2024/10/01 16:22:16 by miaviles         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	int	count;

	if (!s)
		return (NULL);
	count = 0;
	while (s[count])
	{
		if (s[count] == (char)c)
			return ((char *)&s[count]);
		count++;
	}
	if (c == '\0')
		return ((char *)&s[count]);
	return (NULL);
}

/*int	main(void)
{
	char	*s = "hello amigo";

	char	*result = ft_strchr(s, 'j');
	if (result)
	{	
		if (*result == '\0')
			printf("%s chr is null", result);
		printf("%s", result);
	}
	else
	{
		printf("Chr is not found");
	}
		return (0);
}*/
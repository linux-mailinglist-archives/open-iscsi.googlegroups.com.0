Return-Path: <open-iscsi+bncBAABBQODW2UAMGQEWZ5NRDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3f.google.com (mail-oa1-x3f.google.com [IPv6:2001:4860:4864:20::3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D49717AB362
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:35 +0200 (CEST)
Received: by mail-oa1-x3f.google.com with SMTP id 586e51a60fabf-1dc27f84cbcsf3125652fac.1
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392194; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+dntHkGGLf0Tyi9vcQH+ukalO8GNJFgavlbF/Y+zp9Po2LXVlTMtMrn8jbrXMKK0M
         xIgzpuWlrBYW4tygx0z03ppOsF68dn2g2ddo4Ajf2IxzC4eaBGCxzNfgPM//iAKeLNIu
         jlCGt3HiZfZpK0y1mbWf/zMS8MdqmPiD19zN8ay8uYebKFGyt4O0XSABF4htD7mWXDJc
         dh5+ujVBgOA52KcXI7XZajBZI+dKRR+KKpQYBWf+2tK7EvKRnH9FVF7b7MAGVme/GFcP
         5Hij0J/hPxtXKol+j2jTi4MGwS4LcMq9Yrv4JqNNZPgM9zf6pakCzZqYb0SM6zvA25TU
         d1/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=tR+1kqaqZqQ5o6HSPeMmp900QDxyP4FsV/zxq8Wk+Yo=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=LRWWp8EghFsTue5tFXm6ZC1EZTHSBwLht8aBbFzeeaixVYxFu8jjaJOqH5SiGbpzca
         0JKYx4kEUlXh1Nt5f8IBDY8lJ/jVNIvyJnbfhlQLcdwJGhjlooVCh0fqcR1dzv200K9k
         bwonceCPz/2TePD6QG+4XmpIwg//lFVDdgbFBmRzrQhGOGDXOKp9d0Ipm5s6l4GWoObg
         v6wW2+Jy5hBcFQR2/d3eNEonG7CqBgejsE446YfjPOfmUUNK7cLa+JYN9t+jGW4lXtMr
         j3DYMFJ2TlZLvKcNEe19Bfy/c7E2uEU+NDG61pcH7GBwFCn/9lWvqleJq/o0cyqt45Zo
         cAQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=a9Hq6mkk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392194; x=1695996994; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tR+1kqaqZqQ5o6HSPeMmp900QDxyP4FsV/zxq8Wk+Yo=;
        b=essd13VQokm5ymvqmnLsPDcSMy2dq6BQ8FY0OQtFJaK+sI8q+WPi1x6kBJM+h7v30M
         R9XXkQboke3qJARs79cjI00VSE/7d7e0O0FZQrs48Z9Igy8rkEvaLJptrqo5u67Yf2y4
         WQdrgl4+ANwLlPjEABd/kiOFlTJhqLHw/Q7j3u/UCIgt4hrUTV8k60afVPCVbXbRKdH0
         BbCSQcNFHm2+otcOPGTIZQ/e3htrquNCILeO21OavrT1tH2HJKR/RbSyiRVLWildpjPo
         1bRtYBn0F+MemHllgOKvIQMgR7hTL2B1Lx2GzU+yvuqwqgCNzErfgXJ2MABsBvb3HQRo
         v9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392194; x=1695996994;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tR+1kqaqZqQ5o6HSPeMmp900QDxyP4FsV/zxq8Wk+Yo=;
        b=IwvfsBdfUpJXitJf+jNABOX3GDJ4WX/LKgY98poCkSIfTaffU91AzFEFFU5XsNoT5S
         ea8+hqpRYe0I2c4nkEZHKWitgsNFiO1d5hVMBCVgm+HSwcrXdCgJssKjyhyG0JBwsnG/
         6GiNdHxeFre8ileEUXRRwrDp4lanJNNQ6ntF/6tgy9dxY3rrC0jZpWtYfdenU71bu34P
         5IM87VGkFGcU+YCj0lsP5lo6+vOeauZsWkoADfQvlIm8+LRt744LbonW5l2DlyQD3Qls
         dS7CBRZjarAr/thOjyCsR0QMwQ5vK6J2tRM8Fm7HhC+CuXWf6W1FaMAddEBlzGTxO4AG
         Z2xg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yy0F+7N2urJPhO/4Kea8SWRuoPUkrTpJwrE9hs8d0bcGAwroiwL
	l1KGwd6UWGv7SbfNfEdID6Q=
X-Google-Smtp-Source: AGHT+IG1t2G/7yOh3rNN97OfipXtHj9iQVMF1U5njWVElfCj8OdUq+C2134Va2tzo3lJqdG+3Uvffw==
X-Received: by 2002:a05:6870:330f:b0:1d0:c53c:19e5 with SMTP id x15-20020a056870330f00b001d0c53c19e5mr9703290oae.39.1695392194712;
        Fri, 22 Sep 2023 07:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:eca4:b0:1d6:cbc7:fb45 with SMTP id
 eo36-20020a056870eca400b001d6cbc7fb45ls1323560oab.0.-pod-prod-05-us; Fri, 22
 Sep 2023 07:16:33 -0700 (PDT)
X-Received: by 2002:a05:6870:1a98:b0:1d6:4b44:a3d0 with SMTP id ef24-20020a0568701a9800b001d64b44a3d0mr3591426oab.6.1695392193588;
        Fri, 22 Sep 2023 07:16:33 -0700 (PDT)
Received: by 2002:a05:6808:11c3:b0:3a8:7920:a17f with SMTP id 5614622812f47-3adeec4b398msb6e;
        Fri, 22 Sep 2023 05:50:06 -0700 (PDT)
X-Received: by 2002:a05:6a20:8f1c:b0:15d:5e1e:181f with SMTP id b28-20020a056a208f1c00b0015d5e1e181fmr4364712pzk.43.1695387006150;
        Fri, 22 Sep 2023 05:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695387006; cv=none;
        d=google.com; s=arc-20160816;
        b=cYPcsSZlXmKfzZw1u14Mbg1LCgtQsAHbOo3+WaMSVFLuJp99EXDRYdDlNbioXiBxW6
         Ux/CjQ9kRY4dq9eZu65G35tSWoNtwRmEnrWAj0k6axPoZD7gvhnayv6xvB29N6JHhJeI
         N6cjfK0LMnqEFEB/jAmti7qzlY/j/X4Ern5zR4Sv3yezWfNvm7oOR2BEuGJVLWNMFAg4
         t1dZ/HjfIZxgHmXvp8uSqK00I8iWFTOsUE2HUBAYnSCRaDQ2bAUI7TZA79chO6hwa9tV
         hcYRJaDbjNXMawUddJ88CQDhsW4U7hKx+C0GQm7ZeNRXZayBGKyo9dk2564haL4WUS2w
         lPgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=Wy7P1iFXeqsvz/8pNRnHifKZlT3r1E+U4CFwH8MtEtI=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=athOudbgQuGzT+mBitmsFR9EXDLoFDQ6FxtEVqvbl36hCMGyjH+OJ8WN4Pck5h6fdw
         BUYF+uv+RCGTBr/I1gAmNvg/HXByA9wvgUY8D+prH34j+PazBjJPBdW73dEJWzn3KJTZ
         39b7ILXaAl0ltjJ1KQrEKJwQQZa02+dcRsqjuosOeMJzX4BJuaJVxEhxEch9tEKiSzrJ
         ONoUST7i62T6jQz5+6Yy65HanVFNlJSHBh/pUyHvh9M8XabIM8ILsqy7w+n+p6I26hy9
         ohv2DRQ+dLDF/Q/AW8VPgiTwiRQOpUMvx4217a7ZdvpLb/qFfyRS+HqqSAxjXad9i6k+
         iLRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=a9Hq6mkk;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id mz10-20020a17090b378a00b0027197e2f839si163802pjb.1.2023.09.22.05.50.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 05:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 034AECE2359;
	Fri, 22 Sep 2023 12:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9F5DC433C8;
	Fri, 22 Sep 2023 12:50:01 +0000 (UTC)
Message-ID: <ea28de69-8b9d-8ff8-b7fc-eb780123f055@kernel.org>
Date: Fri, 22 Sep 2023 05:50:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] scsi: core: cleanup scsi_dev_queue_ready()
Content-Language: en-US
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922093842.2646157-1-haowenchao2@huawei.com>
 <20230922093842.2646157-2-haowenchao2@huawei.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230922093842.2646157-2-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=a9Hq6mkk;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 2023/09/22 2:38, Wenchao Hao wrote:
> This is just a cleanup for scsi_dev_queue_ready() to avoid
> redundant goto and if statement, it did not change the origin
> logic.
> 
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> ---
>  drivers/scsi/scsi_lib.c | 35 ++++++++++++++++++-----------------
>  1 file changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
> index ca5eb058d5c7..f3e388127dbd 100644
> --- a/drivers/scsi/scsi_lib.c
> +++ b/drivers/scsi/scsi_lib.c
> @@ -1254,28 +1254,29 @@ static inline int scsi_dev_queue_ready(struct request_queue *q,
>  	int token;
>  
>  	token = sbitmap_get(&sdev->budget_map);
> -	if (atomic_read(&sdev->device_blocked)) {
> -		if (token < 0)
> -			goto out;
> +	if (token < 0)
> +		return -1;

This is changing how this function works...

>  
> -		if (scsi_device_busy(sdev) > 1)
> -			goto out_dec;
> +	/*
> +	 * device_blocked is not set at mostly time, so check it first
> +	 * and return token when it is not set.
> +	 */
> +	if (!atomic_read(&sdev->device_blocked))
> +		return token;

...because you reversed the tests order.

>  
> -		/*
> -		 * unblock after device_blocked iterates to zero
> -		 */
> -		if (atomic_dec_return(&sdev->device_blocked) > 0)
> -			goto out_dec;
> -		SCSI_LOG_MLQUEUE(3, sdev_printk(KERN_INFO, sdev,
> -				   "unblocking device at zero depth\n"));
> +	/*
> +	 * unblock after device_blocked iterates to zero
> +	 */
> +	if (scsi_device_busy(sdev) > 1 ||
> +	    atomic_dec_return(&sdev->device_blocked) > 0) {

And here too, you are changing how the function works. The atomic_dec may not be
done if the first condition is true.

> +		sbitmap_put(&sdev->budget_map, token);
> +		return -1;
>  	}
>  
> +	SCSI_LOG_MLQUEUE(3, sdev_printk(KERN_INFO, sdev,
> +			 "unblocking device at zero depth\n"));
> +
>  	return token;
> -out_dec:
> -	if (token >= 0)
> -		sbitmap_put(&sdev->budget_map, token);
> -out:
> -	return -1;
>  }
>  
>  /*

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ea28de69-8b9d-8ff8-b7fc-eb780123f055%40kernel.org.

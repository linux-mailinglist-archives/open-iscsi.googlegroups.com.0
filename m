Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBRXHWKNQMGQENLQOJQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CC5623D3B
	for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 09:18:17 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id 186-20020a1c02c3000000b003cfab28cbe0sf2292487wmc.9
        for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 00:18:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668068296; cv=pass;
        d=google.com; s=arc-20160816;
        b=I1kYcPed6D+ycjLFCIZkC12ZIKz4Oq/gBMvjMXtwq4H0nYAjaH05+bRLHYzXa5S8pa
         IpeF8sm8e3FpAM0o3FeiCtjwFR97FyCvuZnICRD6K2s1RkhPltd2NnlnRCJ2N/QHRAuu
         Mm29k0YSKQKSwgFi8a9wNZqWWmec7FJEvDHRFJaEfKBzJg7X+ks/SRvEKKb5fL/0m1+q
         4LJgjuAZFyHqWV6QbOIbWHpfvJtSxzgzF1uNrBFiLgIgEO5thzrJpi1O4OeHqD/rSdKi
         1B3nfEasqAXlI3S09OyaPgMcgHbC4B3ltdjHTVIIGfrKWtdQe9JKblTU3t2Ly1QVXm/h
         Z9WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EkDzhQNyRyeSpKQCmrukQZSWtxWy0gQ9X+vXS3x5E8U=;
        b=PKW4V3fRy8n/lK762nFAdVknMMDf5eapMl6T1xFFo6dAtDDKl7wqsTerwS0RcZrbGk
         m2olWjT3yrfTUQRA8Vr8ozVLBRlcgLfX46H7Co8jJ+24pGf7ZAGIWRaPeuZs+y7XnAw+
         I+cK3iTyf7aWHhuPjEdBdUT0K9u73qSlOV4dv2OPfuto1lCNv8K2w70EPmAmZ7L4/iGE
         ZFo3EBCdc8Z7hV5POUsWhrmF29WDvASDkJq28I6bg5ygaXsP1jjs5f8DbeT+Rfz8MuHo
         gNyCSIwfc+U3dYD0BrjEf0B0DszB02NS/zJFfWu9s5X27OEmN8rKZe0eoeGFYjczs5iT
         3Tsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=reMJtpYw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EkDzhQNyRyeSpKQCmrukQZSWtxWy0gQ9X+vXS3x5E8U=;
        b=fRe7laeM+mUtpkkBgR0ATrs29OY8ZNL4Yt2JUURf+Pb6+s5RK7KoTNZW8PYpvkR5LC
         HwfaqOtzAieE03+fZcAGpUhtFFJxvsD5YyJvqCMpQk8wrNuBHnvBnlWEWbK2iFa2PHGu
         6xKma3G4VR0iiLXMH57EIk5avRMiwK7PET7L6S4QuGvgTzk4uG6xsz0Fr3kjftbQffO3
         ep3H50M2ZCSaYT2N4XLtPjBtdAphhFGfl+ZzBsoR9iIKPPck98UAeFy1x1t4X7/3y+tP
         XxSWbEQI41j6rEn4omLuVHDz8ZeJ0BW1MCZ5kin9b/bPZmbhpP7z5RSMtCcX7tU5lsgy
         hjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkDzhQNyRyeSpKQCmrukQZSWtxWy0gQ9X+vXS3x5E8U=;
        b=eycJhDa5VqDEH6cwMNlgic97YeJbHpVG4q474QhDTb+fyV8Vs2hpYuxICcNrOBkNG+
         O6+N1VUfBpQY87tsVzpX7J+XP1A/d3cbIJWALpt4RFOzFo+QxdT1fXuwzPgcpj0EOX3d
         tke/uWVMa5CepJpiAgoVoxqpbr4hSJW7XyENv0x1TiM+2ROBg6mwuwPBbVDN1lG1gI49
         9gb6eR9a7+mT7Cd7u63yEL853CaDBegzkG4ybazSmDVwund9dlfEB4jfwmAFg6s8PaNl
         FfTnXVjPNZcX/Ef1ASCfOl9f0RygmDDAA0muaoXqUhnGsR+lbuf08+ieHKnUACNnHRho
         0sHg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf3bKXe3Ee+nf7k9Su89TcrMrErPjD79dTAQ5l95AGvVkLk7S7Rv
	yf8qGqGcWnRmsB1khQP+bJE=
X-Google-Smtp-Source: AMsMyM5Fo6xpTc1qEfcVJ14kxjoY5Y7i5NFctwKU8RUXY4TbTpW6mhJ37BX8Ir9qd6NGatt1G/HRjw==
X-Received: by 2002:a05:6000:12d1:b0:236:9d32:b99f with SMTP id l17-20020a05600012d100b002369d32b99fmr41243116wrx.567.1668068296568;
        Thu, 10 Nov 2022 00:18:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:d231:0:b0:228:ddd7:f40e with SMTP id k17-20020adfd231000000b00228ddd7f40els1922598wrh.3.-pod-prod-gmail;
 Thu, 10 Nov 2022 00:18:14 -0800 (PST)
X-Received: by 2002:a5d:53c9:0:b0:236:69fd:d4cc with SMTP id a9-20020a5d53c9000000b0023669fdd4ccmr41478262wrw.618.1668068293909;
        Thu, 10 Nov 2022 00:18:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668068293; cv=none;
        d=google.com; s=arc-20160816;
        b=DvR8i6+7bLokn/Z7dBKNyfeQXh3Itn1Mbph4+ZeeTRmMnOgb2zLqS7hkjHinbFhTPl
         Z/J8TZoLNZUt2TVTdyUMznUalKHdYG5NRbAv3WOAvq5WtObXaiNKq2k8rCZaO9moJUdh
         bllT1P+ieQkOVfwTI5TV1fk1fAVDtdeuoePvE4NpABl6ABDw2OR8q3Cr3DOdNUYJie2+
         GmPdyfLXhevBaB3A+bo/UfNfmMS7wKu8pCc5LoBtlPEJAZW8ZcVwI5Ar66msnWJJgOVa
         tn2KKVlVwD35mV2hQOHKNhABTsjC3BcB3TcUk1N9taNVO1dTYoz4yYBLFfYL8aAKrAqZ
         5OSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4amzUOd65JOTpO3abbtS/Wu1zXQGN5ekJciNVpJwvtw=;
        b=HY1tge/ld+n5idOpiBVaJSR0cMUOdzuaKQx75A9kKBfMiB2XEuTzqBtKCrI0US3r8P
         N/bdLq6xAyjs7jybMAt0O/y3RnzlfU631qVbdYkBCQdoGdxnANdyjzefCLsrodCzI5te
         fHSVJxCnVskD9o4Iz3qTbeXK18GbXw3fOUm+RUggTosubFOIs0aiaFWqXTTElYeKm0dw
         xY8AfEJnPatjXnMIxg7xXHDDvfqV9aO5R5/l7AvQ/l8Co+bqeG692imqFKPnyN7Pj7cy
         q4Y/a8Q7MKod0SccqGl4o2NZ4iLJBp98sFIKWcsxNue6CxbD/qQWhLA/BMJvp8TpgymY
         Tzpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=reMJtpYw;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id d14-20020a05600c34ce00b003c6c0197f3dsi163332wmq.2.2022.11.10.00.18.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Nov 2022 00:18:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 899A7B820F4;
	Thu, 10 Nov 2022 08:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCB91C433C1;
	Thu, 10 Nov 2022 08:18:10 +0000 (UTC)
Date: Thu, 10 Nov 2022 09:18:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, lduncan@suse.com, cleech@redhat.com,
	michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, rafael@kernel.org
Subject: Re: [PATCH] drivers: base: transport_class: fix possible memory leak
Message-ID: <Y2yzwB0IuaVS3AVq@kroah.com>
References: <20221110034809.17258-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20221110034809.17258-1-yangyingliang@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=reMJtpYw;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Thu, Nov 10, 2022 at 11:48:09AM +0800, Yang Yingliang wrote:
> Current some drivers(like iscsi) call transport_register_device()
> failed, they don't call transport_destroy_device() to release the
> memory allocated in transport_setup_device(), because they don't
> know what was done, it should be internal thing to release the
> resource in register function. So fix this leak by calling destroy
> function inside register function.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> ---
>  include/linux/transport_class.h | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
> index 63076fb835e3..f4835250bbfc 100644
> --- a/include/linux/transport_class.h
> +++ b/include/linux/transport_class.h
> @@ -70,8 +70,15 @@ void transport_destroy_device(struct device *);
>  static inline int
>  transport_register_device(struct device *dev)
>  {
> +	int ret;
> +
>  	transport_setup_device(dev);
> -	return transport_add_device(dev);
> +	ret = transport_add_device(dev);
> +	if (ret) {
> +		transport_destroy_device(dev);
> +	}

Please use scripts/checkpatch.pl on your patches before sending them out
so you don't get grumpy maintainers asking you to use
scripts/checkpatch.pl on your patches :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y2yzwB0IuaVS3AVq%40kroah.com.

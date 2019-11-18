Return-Path: <open-iscsi+bncBC6MFJWO34DBBMWIZHXAKGQE3RIZPNI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C406100147
	for <lists+open-iscsi@lfdr.de>; Mon, 18 Nov 2019 10:28:19 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id f17sf11110499edv.6
        for <lists+open-iscsi@lfdr.de>; Mon, 18 Nov 2019 01:28:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574069298; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2T4Onram06YD68e18q+l91gE3OkUP/YcRaKAGz2qFtckLvsWIGxA5p0zaE7GDWKMH
         AkyLqVDDFUF09X68gvV7Yy1u2SxPzvb9KfX87aUQ5lvBCIM9ZLOVXaWp3yr8falpwIK2
         WmWuaVw1l3s1RfcpwmVFQTqkMhCbm8nfiDaXMccx//asV39X06zAPyfOGdCMDL1dMB9f
         n8RpchlHzCvqipnQxN+Ty51E5oS1/dueBOGNwuZv5GlUtnnZmCEhCq/9T8oZuUSkn33i
         laCsrE1LsWTmNP9ZrqhEz95rBStnJ/v1u44eU/Ub5plNZBOK9DhQVCR9Cr3/wJq5aaBQ
         AnQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=jXjFn+Mku96V7rVgojUMx57wtJGQXG84vSRXhq18sGg=;
        b=MJMechN3zchnxZTWs81UHBRvsJRMRuQ6gZY09vERkcMnyxQK9Aob5t4+XfyGf1zPwf
         HYwwNv3gD4+ZTIPa0cgljwH5NRNZAfRGsRxrWb1XNkbC7rihlewLqAo//9FXKFdO94x6
         RxheFwu5EQYXcfA6W9O+uFnUFPsUTFJVfFASDbbQHe5/f78Fio6e/1mM+V54Fr5dvPGw
         vyzXn6ZWGXloXFqXQlnRrHBPBuDwJnBt1wQlBBB0CZPdK9OZWkVA4oZH6iNEtkbfOcrE
         2pIxpFXAAVIU0bD37REs9zylj2s5qV4VwUuDet/Ub9u3b7gy+5Qy2q8nb/EvpBQY0j6q
         +ASA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jXjFn+Mku96V7rVgojUMx57wtJGQXG84vSRXhq18sGg=;
        b=ZqIGvfACzOpqm54NbssuotXwe4H+Xu5KkgzxWydkHkl8auD45DQ2ww3Rx31YI8rtl6
         qiCPGIiLgrA144G+WRQx3EwAwTxzX0L0XPByJ1SQtG2qCpzznU8qhvsrXGhR29KzJgrm
         byoqoczwb2l101fU8oyXYwVgb4kG5WXFetNLNiJeQBrtYU7mXeWoYrpZXd0im+UHzMoo
         5jZns8wHKQZmr3H5H1MG/PRARZi91V8GAe+ewgJBmpt0Eukah9/EZdVZwNLU/qKauvtl
         JB+R32Vc2WWSpr931ZZGNIWu2WlM2pCUDyA4gQ8Wr4MWn7yNpRW3cYYM4272/WiZsUMf
         s1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jXjFn+Mku96V7rVgojUMx57wtJGQXG84vSRXhq18sGg=;
        b=EC6rjxudVgdoEpTgFxuFXbCYMNwGHw/U1+Fhj6DYz8ozeE+XeZgkZoZ5pbvKgUrROY
         gHDnBLwrbao4npPEi7p3ohdygUCSyhuur9g8nz4S3FoSeHZ7oA2YstX95moyXw80bCO2
         mqIVzrGqvHU9i2nH1A+jt+0HgatxptAXUjezDus4sRXsMkfWNuRtYrzWFPUbXH1gV4FR
         8vc16/xGVhReYXgidvkMdxv8HUB1WtWAVVrWkjxHxZjfp9sknK+8BZLrj8h5b0C6uRFP
         Gg6gbjpoOVcyhBDRig1YoCjInnGDxbw5Xmhhh1TLyjQz0ORUAy/9/KHjyL3y4k9OFNfq
         B9Fw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXc31jhtVsYRfJQpajC7OYGGvrLSRtNlNObbS9nbyroxVHFKB5f
	tXyQ3Cs4cUNQMoIpJq6u1fo=
X-Google-Smtp-Source: APXvYqyNMxGthp4zB09nWZw3BVAXVXaXWRAjUuF5On7tEhA9SW7MfobDbCURV6pRtGI4wYRjlPk6RQ==
X-Received: by 2002:a17:906:f90d:: with SMTP id lc13mr25208791ejb.154.1574069298639;
        Mon, 18 Nov 2019 01:28:18 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:b857:: with SMTP id ga23ls5374706ejb.6.gmail; Mon,
 18 Nov 2019 01:28:18 -0800 (PST)
X-Received: by 2002:a17:906:86ca:: with SMTP id j10mr25558708ejy.200.1574069298146;
        Mon, 18 Nov 2019 01:28:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574069298; cv=none;
        d=google.com; s=arc-20160816;
        b=O3MQk2waehlC74nLpUQzcP0s+Ig6q+rDtesqV0bxxg2kvCfxblT6Uqi6BmIrVbQZNi
         M5dV3SbELgaW4WIHmnKGxD+FKjy9hOPAbGhBMWqbww2dUp79XgiZx2xVECuEX7Wt8Hsf
         oEbYjLJMGlHFdFpJxMsh7hI8ywyy1RIOJ3gWWsJywtazTfEhQUXmK4ZC1qx+joMHPnPo
         k5PtylqBDdguBQeecV+Rd3yynrpffI23e8JTV/tAOwbulCYGwfs/aPtSGUtBuM7Bddt5
         L+6DJ1gNf/nlbSAHmjRjF2BlHOahmo6CcI0/lgFnhifE6hU9SOmKgy9BIspnyMd/atku
         5IMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=s4zgkOCga3/IJCpE0KqfN5/b4yir4xtmkLVVmYyRu0s=;
        b=lOl7fewKA6JPmT0Ro2fE/dZ2hII/MHb/L0dNTHrW3+Mk1wPs2w2f46uezxq9tZ8p6y
         UJ0PNDgicWQj4DCl0le6/uDXVJNxGruEfwc1dXVp9SeFSbItGf9SRW2XBtuP50XCFcec
         yPAXpsGiZS0mcOYWWxhLVfi+vgR6BqibxYtO8xvB8qIKqFB+4UeqSs7SoTJb4t14QhCf
         IMCfxY/wsHa1vbtqsaNntZ2B6jsKDSfemkLeKm4f+Kfdiiu/9SFLVj30X9Jhwne8hx+A
         YOjOelZZ3aSyAg1ez5oXfqvqRfGPn5S8/ZWKcG+IsgGRzBXSx5YfOml3V8XBStIZ89Wt
         BwVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id z18si1095066edd.5.2019.11.18.01.28.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 01:28:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 475B76000051
	for <open-iscsi@googlegroups.com>; Mon, 18 Nov 2019 10:28:17 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 262DF6000050
	for <open-iscsi@googlegroups.com>; Mon, 18 Nov 2019 10:28:17 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 18 Nov 2019 10:28:17 +0100
Message-Id: <5DD2642F020000A1000353FC@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Mon, 18 Nov 2019 10:28:15 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [PATCH AUTOSEL 4.19 054/237] scsi: iscsi_tcp: Explicitly
 cast param in iscsi_sw_tcp_host_get_param
References: <20191116154113.7417-1-sashal@kernel.org>
 <20191116154113.7417-54-sashal@kernel.org>
In-Reply-To: <20191116154113.7417-54-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Sasha Levin <sashal@kernel.org> schrieb am 16.11.2019 um 16:38 in Nachricht
<20191116154113.7417-54-sashal@kernel.org>:
> From: Nathan Chancellor <natechancellor@gmail.com>
> 
> [ Upstream commit 20054597f169090109fc3f0dfa1a48583f4178a4 ]
> 
> Clang warns when one enumerated type is implicitly converted to another.

IMHO even an explicit cast doesn't make it better: Either it's the same enum, or it's a different one.
The only clean solution IMHO would be a converter function like

enum out convert_enum_in(enum in i)
{
  switch (i)
  {
     case enum_in_1: return enum_out_1; break;
     case enum_in_2: return enum_out_2; break;
     ...
     default: bad_value(i);
  }
}

Maybe a clever compiler can make this (almost) a no-op, but it should be clear that assigning different enums to each other is a bad idea.

> 
> drivers/scsi/iscsi_tcp.c:803:15: warning: implicit conversion from
> enumeration type 'enum iscsi_host_param' to different enumeration type
> 'enum iscsi_param' [-Wenum-conversion]
>                                                  &addr, param, buf);
>                                                         ^~~~~
> 1 warning generated.
> 
> iscsi_conn_get_addr_param handles ISCSI_HOST_PARAM_IPADDRESS just fine
> so add an explicit cast to iscsi_param to make it clear to Clang that
> this is expected behavior.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/153 
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/scsi/iscsi_tcp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index b025a0b743417..23354f206533b 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -800,7 +800,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host 
> *shost,
>  			return rc;
>  
>  		return iscsi_conn_get_addr_param((struct sockaddr_storage *)
> -						 &addr, param, buf);
> +						 &addr,
> +						 (enum iscsi_param)param, buf);
>  	default:
>  		return iscsi_host_get_param(shost, param, buf);
>  	}
> -- 
> 2.20.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/20191116154113.7417-54-sashal%40 
> kernel.org.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DD2642F020000A1000353FC%40gwsmtp.uni-regensburg.de.

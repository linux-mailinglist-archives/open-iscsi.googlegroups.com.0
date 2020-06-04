Return-Path: <open-iscsi+bncBC6MFJWO34DBB7UQ4T3AKGQE4BPHBEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2706C1EE6D7
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Jun 2020 16:43:11 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id n17sf2168002lfe.15
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Jun 2020 07:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591281790; cv=pass;
        d=google.com; s=arc-20160816;
        b=vIcTKL4V74PQ8m/wN3lWIeKMGFJUtofY/yRwQOFNUUmL0R7t4DsQSwPJDzNbmw4D/b
         HS3wnIkDUzt94FGSuWy9BFC6kZyRSC5CL0KQXaXH9Jyg34WEFy7YFVpiGrNXeFmpG41L
         ELk8iDxgUKkEas99zxqRPXMMDUjDphm62qljS7AtHxzyNmuVOlPrIhfKMS7qvW9ZoZ29
         wM+HNTHG1buTtmeGKaIsriI6/R64ienzn+ULYt/dmtvZO93052lPJEqoReB84vGRT0Sq
         vlIf1pDKvUHC31mIKiQqLbZy1Zx2Z80TWICxnqQTjgwYr5MiieyQ2ZD6FmaUueN4Cd5X
         GRrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=vP7a93mMT4e3FRD76CAWq4p2yNUxHji/AJwJBaCSN5I=;
        b=QmU4IXq13IVI8oMq8dWv4fyjnAc+dfD6+XgzMtCtFpQdMCpXM+YdrbFAf/grJCOKI3
         ZyDJRQLqOWZIUoyajrFeQjF0386mOjYemQ5/VcXL3cekFSHzfAqJ54rHPPFF1nlqOsDu
         MfditJH6k7FeRdVd+mutYOcJ865uhStnqF28ShA5pvTS6nV0her0TXpbj9J21CWgpsFh
         o6qrBtfCMnyffubeJ0VN8j/LqJu4evoQVAt11IdXqkHgwiai/UpfR4MQTEHAosYXJlY4
         i2aY/2+xEzatmKzP3t0YAKkbmmwnGB5nv/vQhTVht3ylpiLjrf4NK3ZsDxdl71/Wmp1U
         dWuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vP7a93mMT4e3FRD76CAWq4p2yNUxHji/AJwJBaCSN5I=;
        b=m/qBPad5SQBd6qS7ZwH5hjDu8D0m8t57l7om3/lQotcbOF6MZCk4swm4BQ9Aqa5ZWN
         cDXfWo+kT4NYzuo6H4/xpoB/Z0s2ZcyW+ZxkCG2/5JcD8iM4Io9BeAdBn25JGnjjKC17
         ynlPv6bOqDWY2gjYRMsg6Y3MqBFcch9qck5MvKE1jO+jNZeipey8O02xbW+l2RSktt2M
         BU5VfIuT3Tc1gfpQYSF8to3N3SIb5HtUlmI1RxZkVjlFJlMoFfDD0O/SmeFQhbpr1Ven
         V6prER2Od5IS/BRLqCOqQv8/AOGQlx1CnaE7r5mybxdcZW6So7m4pmlUmbnTTPSWbsDk
         n44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vP7a93mMT4e3FRD76CAWq4p2yNUxHji/AJwJBaCSN5I=;
        b=XNCFOc7bHE8xUMoxRSChxtBFmZqWlK+cGuBdLRdR4YnwsMJfe64O2aIWMr6SSDSoi3
         VPF7rbWNNsk2M6/9RbgRFZe2zQUmB/Y/mFZQXQTJvTvFA7nc32dPFcTrSmuMTWpGo3K7
         NVMhrYwaECoJwSZHs83LRo4KVvSDIm8+S4y/wqZJjRskmCCPIN5Tdkrvj8WRwte5SeCf
         o21NhjpBF3Q3gH131OXeKlZn9lAca6SAf7VrCagLSOVgbbPPmG4EnyiEimEL+E9JsHRJ
         aTgHu+3rzB03goOx5fTf81tIQMRrOWbaAcdcMAC5JSTx+vwbNpD8uumfgHrde6whr7n7
         49Cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532kRlSepy07xM4a7/hN610QTG6NocIc3u2kHlKFu4I/W+Sy0oOP
	RXS3v80HmKqnkVUe7O9Mi4Y=
X-Google-Smtp-Source: ABdhPJzZchjFGdRPT7ZCvSxBGDW749lwh+xEcLwmiEV9Z8tBkj1dGGs5JhOIE/cxMHag7DqraVKxZg==
X-Received: by 2002:a2e:9b50:: with SMTP id o16mr2468272ljj.164.1591281790635;
        Thu, 04 Jun 2020 07:43:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:4b43:: with SMTP id y64ls1877352lfa.2.gmail; Thu, 04 Jun
 2020 07:43:10 -0700 (PDT)
X-Received: by 2002:a19:ae0f:: with SMTP id f15mr2774682lfc.142.1591281790001;
        Thu, 04 Jun 2020 07:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591281789; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXbspR/2lG64MyN0sRPxDEy25ELFaTxmFCwjVVex6CMiXEJImZqYMnSjwuZenKqdbv
         lUqM8jAGjvnMNIy/v+3QZ9w27SIxDwRBdPKLGrZwMA3PHsoZ3secRAoangTuDC/xDj5K
         FMQ/DhMHEH0hkDRoALfHYJs7UjOSh1OzQA718IReUgfSQOGkefdTMRw4OZc8AQ3pGzvP
         OUOk7aWWhFzYiK1GJjwR0V/sCOEugQZqX/qtro1i24TVOIceneP1St20Wr9V8EYnJ03y
         5qEJV8/4d1/xI/RkGVgvBXNB7q4RqV0aIwzvJgjZWH7jgRTGEJygFcXcpsHBBBBTQHBH
         xnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=nzHG3KnpRigTBqT/Kdffv9FvG84KwBjZweyCaQVtAhw=;
        b=kLzUurbuZ7X6pBK+Ol5aoAlP6PDJNgxSBicGkBvGbzHY2iUmzgpHhjrC/7unnDaQ+C
         bU/51cXEZGtOgGHtGTBH9oqSZJNGE29crqaBE2JwGHjTz0Zi78WygcjxbpZ4BB4FU0wQ
         nwU1Z1qHqSnTe7lSOfE1cqKkkHeTW7xS5gXRTWhEDLgl86v/vJ+QM7SDAjs3lDa55v2M
         1j1tH00kfF4pGmFK8pLeq/mnQHQOUTbCGhx/o/v9mQ7ruvc/gvh66HLDrgFIX+xwhgfm
         3ZESW8uGP33a2QwRVen9XZEyqBpac3Lj6tePmDTCyRcj6iczQw4HhQroc4HNB/eXuvl/
         lI6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id 14si302392lfy.1.2020.06.04.07.43.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id C6D056000058
	for <open-iscsi@googlegroups.com>; Thu,  4 Jun 2020 16:43:07 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 64237600004A
	for <open-iscsi@googlegroups.com>; Thu,  4 Jun 2020 16:43:07 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 04 Jun 2020 16:43:07 +0200
Message-Id: <5ED9087A020000A100039500@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Thu, 04 Jun 2020 16:43:06 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>,
 "Lee Duncan" <lduncan@suse.com>
Cc: <linfeilong@huawei.com>,<liubo254@huawei.com>,
 <liuzhiqiang26@huawei.com>
Subject: Antw: [EXT] [PATCH] iscsi: Add break to while loop
References: <7784_1591272646_5ED8E4C6_7784_490_1_1591273415-689835-1-git-send-email-wubo40@huawei.com>
In-Reply-To: <7784_1591272646_5ED8E4C6_7784_490_1_1591273415-689835-1-git-send-email-wubo40@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Wu Bo <wubo40@huawei.com> schrieb am 04.06.2020 um 14:23 in Nachricht
<7784_1591272646_5ED8E4C6_7784_490_1_1591273415-689835-1-git-send-email-wubo40@h
awei.com>:
> From: liubo <liubo254@huawei.com>
> 
> Fix the potential risk of rc value being washed out by jumping out of the 
> loop
> 
> Signed-off-by: liubo <liubo254@huawei.com>
> Reported-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> ---
>  utils/fwparam_ibft/fwparam_sysfs.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/utils/fwparam_ibft/fwparam_sysfs.c 
> b/utils/fwparam_ibft/fwparam_sysfs.c
> index a0cd1c7..87fd6d4 100644
> --- a/utils/fwparam_ibft/fwparam_sysfs.c
> +++ b/utils/fwparam_ibft/fwparam_sysfs.c
> @@ -115,8 +115,11 @@ static int get_iface_from_device(char *id, struct 
> boot_context *context)
>  				break;
>  			}
>  
> -			if (sscanf(dent->d_name, "net:%s", context->iface) != 1)
> +			if (sscanf(dent->d_name, "net:%s", context->iface) != 1) {
>  				rc = EINVAL;
> +				break;
> +			}
> +
>  			rc = 0;
>  			break;
>  		} else {
> -- 
> 2.21.0.windows.1

It seems to me the whole code could be more readable if the rc were preset either to "success" (0) or "error" (something else), and if the "other" result is needed just set the desired rc. Those multiple "break"s make the code hard to read.


> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/1591273415-689835-1-git-send-ema 
> il-wubo40%40huawei.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5ED9087A020000A100039500%40gwsmtp.uni-regensburg.de.

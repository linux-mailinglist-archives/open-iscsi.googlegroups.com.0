Return-Path: <open-iscsi+bncBCK2XL5R4APRB3EO5OOAMGQEC4HLI7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id EB13364D6FA
	for <lists+open-iscsi@lfdr.de>; Thu, 15 Dec 2022 08:06:22 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id z17-20020a25e311000000b00719e04e59e1sf2704921ybd.10
        for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 23:06:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671087981; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwc6aLKspqtViNdECywpVd2s1KCV34j58J+LrT6aOBhDWuCpa5ITswnLC/lJrFF/tn
         qdRWDP/9FI5dVFBbISKCc4HM6ro5JwpNHsOQAC/0/Vg7M/50VtIayucLwGK0AfAxBptU
         +rQRiMlurD01KGlzjVkwGEn17PLViDawLQ8ZSrj42CpaGYjl4C44D0EXJMC8awkIZWwk
         ICzhssEaQGgsoOAY1oa8UL+KwhI2YndmCts/bO7DNKGehCfuo4E3W0HI8H+UtmBc58E4
         v1Mq0QRuHOnPYUvbTSHYInAg/EQOV7Ajdyqr/KN31RL3oiRyahmeqN3ZDgsfsd6/7E/G
         eO9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oJaF4D/2qh/KDzY8QmiNSwWXUJHqcfNe46DXUbrEkgw=;
        b=GDLaNTzT8tEstqQN68CdKu9fn2vG9qiaBy/u1RTweV9THWItMFezMykHfm1kjILl1o
         iaM5d3+iEqHdBt1SENf4lhW5U4SjQgazpUIVp+7xyy/u+TYJhHX4evsGiAduoUl3Q6DD
         u6z56vyM74tl+Ev8nWgvq4WdDVfQJFa8vZy9giib0r5cpiG9AKA5nSZSwNJmYCQESXlO
         BFHKWyEIP28Yak2ciLCcJF2fEpBO6g0EZahATR9S5kYK5WgM2w5eaQWCZS50YpPU1SVe
         TijOrAPoHKAVLj8N6Xnk4eU2cjkQii21NomjPLIKYXg18nGyYCe++QQNVEyF6+inthuC
         gAXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ESzkO2WQ;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2550d39826730817a127+7053+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=oJaF4D/2qh/KDzY8QmiNSwWXUJHqcfNe46DXUbrEkgw=;
        b=L2/itIPIsbLFJna5zKCNDfTHdwRk1Q5nhLPq3ni+ASKsvDn0tn5hg3X955gxahmNeT
         6iSIC7j+L6oDVMpWjX9TiSVQWjQWVgi0uddCwyNauOWe+ALJmkwsXhT50mW4ZCk2JNcb
         HTrdo5EWsMjTZT0FQ+ZQc3KNhi5nTDTTOejgIYBeNciL9w/KfyksFAQJK8D4na2RmH99
         m0ZS03A3JoPboI1v0P6rk2vd/Q1spXBW41CsSthFRpVvBrEwXWtVBCrd096MuLIo5Yeu
         eMbbRDetqQQwYgX4WKHnSA1y36Tve912acLOsXns1YQE+GiW94Neul9CLRuHS/zTRpnV
         /oVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJaF4D/2qh/KDzY8QmiNSwWXUJHqcfNe46DXUbrEkgw=;
        b=itQqlLEs015aKr5VuAY47Da7MYUJEbrqfbFTGIk7paTUfB+lj3gOrsVJaM8cuYY7Rx
         RQagdqs0I7+ZOGGiaAUt6n22foAf48xyozi0s/aouohkVB7RHl6L+e+s/lklkuCcEduq
         yZJ4u8QmA7XWuKfBCmmkvmj9xMBYlWmZn6g3UE2a89i5YgAja1fh5oKgqZb01/I3qK53
         GVJMm1NjHZHEANnjQYaWXHUFFmZvRVppL1nOW8XvUh1dJm8+/aHPZuZRPsdLt1fH+UUT
         TKjZLmo6b7qj7Sps8jcp0IuDb8te86jBiZMWOAgC4XfN8j0zx+OP0aM003sA9Jj7Wf4K
         T7oQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnrCS+ozO/NMcaeNWVXF72/tNIxblQ9C4ySZbKpGOLGX7dMqHcd
	AHWAYVZKqciPRsXPATs0ow8=
X-Google-Smtp-Source: AA0mqf7WhOLVLbJZxzqpXqWUlVrch7gnqxCk7D8lXSnpSe5SgbzRPeWSLuirWsDmVfGcH6K68v5b0w==
X-Received: by 2002:a5b:6d0:0:b0:6dd:702f:c995 with SMTP id r16-20020a5b06d0000000b006dd702fc995mr92620289ybq.204.1671087981570;
        Wed, 14 Dec 2022 23:06:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:1e51:0:b0:373:6b5d:4369 with SMTP id e78-20020a811e51000000b003736b5d4369ls13333022ywe.6.-pod-prod-gmail;
 Wed, 14 Dec 2022 23:06:19 -0800 (PST)
X-Received: by 2002:a81:7995:0:b0:3c4:960d:155a with SMTP id u143-20020a817995000000b003c4960d155amr5987582ywc.40.1671087979615;
        Wed, 14 Dec 2022 23:06:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671087979; cv=none;
        d=google.com; s=arc-20160816;
        b=hb3DDEV2zCfCsfFtuhqFh3W7Eagd1OrCyd+X9KlDMyX924HRtlyvZ3fW8OpDMnDQ3v
         VZ/RBmXaw1vJDsezSpDnkxiallHEWpEB1e+f67rMrmh4gQalCsWvxDZVqVvRrbq3yRRJ
         L46/GxIELpyfJrQ7kbW935sd4GJp5Pd3LyEoBD6HYLMXb7WnoRSTnHrL5KhChe/b4wzr
         Y2JMkWC8W3TqNlv7Hcr1YyNW/+i4sPdHFqzYifpFajpuKR5CT+w3DZvMYBX8lAEyYthH
         94VQpGrG5FDSTqAOSjdEqPuhdxmJAt7/PL/WoI4dzbrvBF/c/SSoJ3oiy+qKT/ZQq2g6
         4Lvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pJM1bQVht4KEa8PGX0/1qnwZOWHWJSoGpR3/A3VryPg=;
        b=ZBk47TfFJgCRgSuGijOrHyxkk5fGc/d0jFfU1Ho5H9wt4rxSTHwHAYTbV+T2Xk5by1
         YSVxgLry9DXNdFvsccgAMn3CP4Z0bdG58o52P6akDcD4XTfVsqFOZ8hNhneW1ZCXZMh5
         kQDdszim+Esx7TOA3HgSyQIQ4CV2Ge73AxDEyDvpb1zZL22cuKjDKxJOD9JKmK35jeUR
         GnEz5qveipV6T1zkU/5cQSLTPq+JQ/EYxz6m5OLU9Cz76YBE2nunvR9fQqiw8fge3wnh
         Cj4sDYE1a073L3eJvyq5gx6GMq6T+iWlBkKXb0EiwKcjZxnIEmmlYF4lKPJ1FbBShQNa
         ijLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=ESzkO2WQ;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+2550d39826730817a127+7053+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id p140-20020a0de692000000b003e0d1cdbb77si129148ywe.3.2022.12.14.23.06.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 23:06:19 -0800 (PST)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5iJj-00742L-1i; Thu, 15 Dec 2022 07:06:07 +0000
Date: Wed, 14 Dec 2022 23:06:07 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Wenchao Hao <haowenchao@huawei.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
	linfeilong@huawei.com
Subject: Re: [PATCH 0/2] scsi:donot skip lun if inquiry returns PQ=1 for all
 hosts
Message-ID: <Y5rHX95Vvl1aLhbp@infradead.org>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20221214070846.1808300-1-haowenchao@huawei.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=ESzkO2WQ;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+2550d39826730817a127+7053+infradead.org+hch@bombadil.srs.infradead.org
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

On Wed, Dec 14, 2022 at 03:08:44PM +0800, Wenchao Hao wrote:
> When iSCSI initiator logged in target, the target attached none valid
> lun but lun0. lun0 is not an valid disk, while it would response
> inquiry command with PQ=1 and other general scsi commands like probe lun.
> The others luns of target is added/removed dynamicly.

I can't find any special casing of LUN0 in RFC7144, can you clarify
where you think that treats LUN0 any differently than other transports?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/Y5rHX95Vvl1aLhbp%40infradead.org.

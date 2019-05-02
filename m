Return-Path: <open-iscsi+bncBCHZVHVFVMARBJ4PVLTAKGQEHYYYX5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3864C112E0
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:01:12 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id w9sf868573wmc.5
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:01:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776872; cv=pass;
        d=google.com; s=arc-20160816;
        b=pd4CsWFov+1U5LVhznViDFZKzAw5l2xWhEKAmzhPf0vYuIDh1fKsRiK4rMOgr/msaO
         8tcwqyCsGSkohKMdBuWTqFtdfLJ8x61HViCXuRGgDWTyENxDHzWb847+TGZ+R4gRefqI
         bk+zxpqCviufswEf0nMu2q4b+0rRLxu3qWtUMrwvO0+dWzstBagv7rfSycbI/yYG6Qkq
         UjDAsaeKwXJ8d3WvYTz9YJrYQcLEaud+QHqc9UQU3s29WCp+9he21bXVP4hVPEJZuyIt
         JWkhkObMkHe7nwTNIDwicTWip53/EwE8eFtog9YeZtVZ2YiGCDuAtF5PsOkZoYAL0hES
         avLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=cmy7RHYK3JD9WaNT+x1cCXsU5UQjdBYlmqoYjE9GUgs=;
        b=xs584YrRug7L5QwSYLTs1p8K+kil0o73NteYpQdo5fCXHEbaM8jpwBKQK182mRSWCF
         hPLUa7jnM3Mz4Q9Ft3ePSzreQ6nYsd9kSLnRWDPt9jgg0Hicey0V3mM9cJog5WxFatqF
         EHeOmgzj6XBukUsdIkCiNtAy3c0A/hXKxnp0PlysgmeNmwsW6T5llvE2ql7YLZ8AmEMI
         Kw0etIGxmSUlutjB7qEYFaen0uEGPvJIq8VbxNFFeJ/e26uB+oydg6IodyicDwmZNLIZ
         zAmvmHhESjC09dK9WQmRKG7uNkjTkTZcIme1TBisG9JOi3tnoHPBxORLiSCTyOrSVCPx
         FU3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmy7RHYK3JD9WaNT+x1cCXsU5UQjdBYlmqoYjE9GUgs=;
        b=A7ejiKDG+1+OObZ3/QJLjIo8lVIcZsWhnvkCzxE4ndl9BrYsaSjXXvDDfFLczW6YHs
         wdAtXkRbQIN3HDguRl4cNPR4Nd1sPB/g1SF6KtzWtLpB1zp/85/a2stSyHjcmuufsQxW
         0CLeu4CrsMARZ0Sxit4eXXMW+v1Ws9UNDCHp5hrZIhYDOuiR5sx4Q98iwqJiD8JZh8s8
         hbw7UzFrEIg6S1TxH690nXyAQLPEcQ2WtxcH8qlT6XQUapuBh9/dqZPqxX8A6DTYI9rn
         Ro74p+TsHgzwqTp1o+dNL7Wn7qYEAXEia+VbVwU030LGFUPxyQEDDxi3VxMQHRDZKxnb
         ViiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmy7RHYK3JD9WaNT+x1cCXsU5UQjdBYlmqoYjE9GUgs=;
        b=j7bR0gol5lP/7OGTLqg2H+EZiP7fDwqSt5qYOcQwoYHkIZW8b3TeIJ4JtNbQ3uqwRi
         bAljTIdMyugQT1e1P2McwKKTVZwBCoPoctIf/rz/Ek8DHBN0NW+JruT+AmFu/ebITuLf
         CloStcJrtLftw0EmkWxgU6LuKJ/KB1rM06VHRrVlfJ4/RDlqJ843YH3EzrhRghzf4jLF
         w5lvX6FA4wde64EF1LeGJbD4XdGhhy3TMzeXavykNgeYwpcUX5AkrnyUTktYHj8QTJi5
         Zs+Bkq/9Hr7fLs6Zlyc9B1SBdsks+ddSmOcYnlrD4OzCwjauFJbNj98p8wvUAxBowy29
         j/gA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX6MXtpFdx1dOG0iDaHxK+hmWl3twuo6gf5QiC/mvA1SJvIhmj8
	XSRIbPtV8lmCv2X3A9UjMAg=
X-Google-Smtp-Source: APXvYqxCTXge4U4AlTkski4aHHrR/43n0pEcvsZuWSKCVVKUNtwM9uNY8thxYpGVcBM0uwGCHajchA==
X-Received: by 2002:a1c:c142:: with SMTP id r63mr948393wmf.97.1556776871970;
        Wed, 01 May 2019 23:01:11 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:b642:: with SMTP id i2ls217377wre.13.gmail; Wed, 01 May
 2019 23:01:11 -0700 (PDT)
X-Received: by 2002:adf:c993:: with SMTP id f19mr1327810wrh.246.1556776871533;
        Wed, 01 May 2019 23:01:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776871; cv=none;
        d=google.com; s=arc-20160816;
        b=gKjBoFprW3LEViIwOhWqIzl/Wgn3iA8vprAL6a54AzRde36vWoz9+10lmsPEHZ1qoU
         aKxq8fbNZY1MZMqRoaNieiCHosVT+IWnj8ERv4rF02hV2a6GAupoMLbWYpNvsdPAnlGQ
         +TE7BknCvsoddbXOrxnwT8D4sydwNO6VmFD6CL+y6aIDSxin14nq1JWMW7ElN8vSg7Ob
         H8ve5QRoDUFzYwIhoU2IFq3fC+8BqhUcTf+G3HIFGoK3czcLzn9J+eJiyNJvBHAtCEbG
         u9jvN+wDC+tIrbYW8AuKL8uf09qyPw2v9tZxkpSLFlFSyZitK47lM0wkDJiZn//pzrDd
         V8Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wymQ0eRjaxmfBv0NHHUKakxULs5J6Fr5yCz+lHbA5mQ=;
        b=RYZcChtgSgX0+063mMQuuHGy+5lTdR006IAxUoggp6459PX1VxfUSCmDzOB6/1o0+P
         kOOsHt3Z8vX+YMEEhVBJ1Px26HSHEuPoTaPtQ1OMyJLH1z6anbgiy5MYrSTWgAfJroQ0
         jSg8WOJEsMQS6U5mvEhD3ngzPANmmM3ue6UVHS4ri6JWeWALI6tLtBM2OL3LAp7TUopI
         QKCdlrckIc5Ej21T1q5DbNJLpnABpqkyJlTknKcuHQ6c41Pkqv+BPw9WV544uT3J7RM7
         sGU8GDGJBa9ctcebrYARTaTR6jl9Didqan5U98a340pck3vuZVqYzQgHpEqO3ut+zT2o
         T9kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s3si765648wri.1.2019.05.01.23.01.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 36E79AF70;
	Thu,  2 May 2019 06:01:11 +0000 (UTC)
Subject: Re: [PATCH 07/24] scsi_transport_iscsi: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-8-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <51cb076d-40b0-ce14-08e8-19ed5f3877cb@suse.de>
Date: Thu, 2 May 2019 08:01:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

On 5/1/19 6:14 PM, Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 15 +--------------
>   include/scsi/scsi_transport_iscsi.h | 15 +--------------
>   2 files changed, 2 insertions(+), 28 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.com>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.

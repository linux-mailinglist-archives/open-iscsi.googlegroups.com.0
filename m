Return-Path: <open-iscsi+bncBCHZVHVFVMARBIERVLTAKGQEPYQOU4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB09A11308
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:05:20 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id a8sf752827wmj.8
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:05:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777120; cv=pass;
        d=google.com; s=arc-20160816;
        b=E8XWQIDG/7/CWGwxdaUeuKyF65z1jGSw9DHEnyUcpttWlKjh/I7vHuR6pmclolmXEV
         Mw0dagNwerzv+YFWHUhUCKNr79fvhDRNI8keFofGc1JseqMWTUATChfZCZf05NePx13d
         I7ebNtnLs4galkbkiye0qM2hIx9X4F+TBsdvElgyzfvcyXyPQmo5MFX+bfKsoNdkg2Ol
         9sdN4jtPcu+Lakjd/oi4vwf2pmKLRwvQT/W/FNaxObJput3M32hIGRTw6UJGtiXpUF/M
         2FJuY1mBtxyLQIO8HfBafuJrJjjdG+Rzlhrt797oaqZtu8HCJ4OYWhx5WjSl/u1DtCpy
         FkCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=mAfRlnhXcdT94luw4zNCFMeiKA4vCS03d7qkqEoCQng=;
        b=zs26UpDI9ptX1ILeAKXSFwBOKankN0X8ZvJQDY0kb8S/PJUtLgS+Tkp2mxN7K/tGbN
         lp8CkmJoH0i4t8XlhSneYnjfIB/6iapr/avF5SrFTtNafCjIWyKHT4Z97xKz+4QG6Na7
         xfm7dicshr296mEpepyCUu62Ty0hMPZBJpo+i6L1xhONGoWpk5uu4FtD8aWozT0wBPEq
         OwtKgLPwBgwKnBuja5WdbQA0kkpHl/jQlLA7uGfy4Tn23jI106OLChT7+RSn5OSHNN4o
         kYNv6nsTwf5w35jpe7KNLXJogWwlxGSFJGVU9B6dWrRhuZx31dgBQNJjdNy2cwaQR55h
         pPSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mAfRlnhXcdT94luw4zNCFMeiKA4vCS03d7qkqEoCQng=;
        b=K6HsBZZKNx7ssMWU9JHjIs5L7fdlCPbL/jCAOvYXOgFmLIj7XgVb/cO1jGBni92cta
         Tha0m+rKIrzH+ePYsZHc/S+fpEreDPXIB8lCHR9CiVFSCugZDibNyJvq26sjqJ46E08O
         rXuquR+EyFFBoqm4MRgiG/dJd4LTMEANGbfMv+KbDEgXJAjcCA6KfBcHZ9Xn5Y0G7IMb
         cXak10TRL00YI5zhXRtsLGBJb7kfrltRNOL8onRR9blGA2FJqeVl/xNrcQMdhr289svZ
         TEb3+QzWzFR69N3W6jZPmGmw9yE6Yo39MLt4O3KhkeomfPq2jIeNHr6e805X6EsdeACd
         S0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mAfRlnhXcdT94luw4zNCFMeiKA4vCS03d7qkqEoCQng=;
        b=m4Psukzm+QpKtF1hGkqu8yCFG+6V43dsR+SkBLPiMctVHwITJVylwKYBq0H4ntMrQu
         oDzXeofXhMeK+KQK+xaeG7Apy3BPwHjUEYAfV0JLqu9l/pnuCBIxCJITTTK46BJCV0Oc
         LxdgELOTrMoSAqw0HIuWTNjGXFiRDIPgd3mjv10ztEP5h8KmTQIUiPKCQXH/Zx28YGbf
         aRe5lkMBSSUIbKjZk29O+y45PeUXv8Cyg7Qo9XUUubLZd3aHub1LGA5/bPZQ7tEvhjIb
         2rfizOHtR9DWL+dZ0o56hzTuyIGZN9VdKJiUO56zHWRiBNKYG9ZuxGQCevBqwDFaT7bx
         1yEw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWnc4WHcSd+27Iq4lopYT8xcwTYfT3FSVdiUg4FRziLXRRu4Ju9
	J3k8cONlDoRi5Cbgr7zcd5o=
X-Google-Smtp-Source: APXvYqyTTiZ65UcT+90uweNwe+trMpuo7tjlOz70Tk/B15wvtla4s5VaEV1lNVi8WI+h7WoGMqv2Kg==
X-Received: by 2002:adf:e9cb:: with SMTP id l11mr1230293wrn.114.1556777120678;
        Wed, 01 May 2019 23:05:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:db81:: with SMTP id u1ls219954wri.14.gmail; Wed, 01 May
 2019 23:05:20 -0700 (PDT)
X-Received: by 2002:adf:f7cd:: with SMTP id a13mr1313409wrq.289.1556777120301;
        Wed, 01 May 2019 23:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777120; cv=none;
        d=google.com; s=arc-20160816;
        b=JYP47TXusfiSHX9xMYXu5SQ4ZZoVmobaPjnJFLcCvglYSjaDFFgEV/d5Y4gVecwuZ3
         vR42OeIWXZzOisQFIQlO49Qgzz02asamfzpdf85ukvvpygKZKBo27XivjWveFPoiIAle
         1nob9w6bz6BouQpQqfCcYHtaY4Kon7igcEetXLjpBaE/rbmQ//XG4p/QOwAyoNNpj4d4
         BCzuR3xjhtWGAXCMkLU9wWojbmj8nI0iBilN1gLHE7+5szudijbHVtJe8ePiON3srNKR
         DVzhBqRhOCSLUal3+wOsPRXi5vEZuzumcLqY0Gq5PfI3Ra+YUyjRBHNXxmuBrbexBCzC
         0VPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=8YZJMLtQK6+LlZAVOEkJOFTLnnnb3qIb40tmmj/UK7M=;
        b=INjEmRrx+p9Csx7CbnCSG7Jeuu+o9dXTtcgJxT4CyuYGVgQaqkuZDxQ97ea07p9TSV
         vRSW72xhRqvxYcNPlH+bbO03EBL3OMvvsLc2DOIX/2D86ggrHpNti2bJbEEGRx5Wqssg
         gGjqN1wmkV/8FUoQAOwO9z7fm174NAYqN8glo4uixns/+/bDYk+h8nSVvCO1StIN8+M6
         opdkH4/tTh+vrSJjGsb/U84hquGw04zObm8bZUBRlMZ+mVwRCu5xKSZ5ha6eaxds2gBp
         IjLEQsqmIaBXygSqY4VTE8EZz+AdI2fIFvFAvbX+L+uMrIng9Mmc3wL8/KSpTzjkVIlU
         3XbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t1si328510wmh.0.2019.05.01.23.05.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id DF1F6AF81;
	Thu,  2 May 2019 06:05:19 +0000 (UTC)
Subject: Re: [PATCH 19/24] sd: switch remaining files to SPDX tags
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
 <20190501161417.32592-20-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <cef71462-6123-f002-cca0-e2381dc02c58@suse.de>
Date: Thu, 2 May 2019 08:05:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-20-hch@lst.de>
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
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/sd_dif.c | 16 +---------------
>   drivers/scsi/sd_zbc.c | 16 +---------------
>   2 files changed, 2 insertions(+), 30 deletions(-)
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

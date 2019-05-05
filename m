Return-Path: <open-iscsi+bncBAABB6742DTAKGQEQZXSXGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 682DE18C54
	for <lists+open-iscsi@lfdr.de>; Thu,  9 May 2019 16:51:41 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id e5sf989745oih.23
        for <lists+open-iscsi@lfdr.de>; Thu, 09 May 2019 07:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557413500; cv=pass;
        d=google.com; s=arc-20160816;
        b=flDtFFsUCP11MiU9YoBAD3QkopoDlIf+MWV0u/alq82GKU4y9yc1I6BxBqOTuJRa5U
         bhcMJcs3vwMWum/ula6reqfpBmkv5v1ep6KRviBJI0v31MIPyxHNLZ45FH1FEY2AIkqq
         rLerAEz6Dw05wzE4mt0LyXNy2sg/AOdRLWOub+m8sL3X6DXfUxyPUe4drwA7b0QSVMrS
         4bPHS5c5X3pZC8kSV33E5+mfIvXQEW2LURhUD5i16EcFstSFfiybH4l/6rmF3ILJJ+ln
         TJ7QyOV8kFsmGV07VN6mDLVTrz8sm/XcHxQ5B/qadc1aj4rkUTHpfjd8qzHhp5eFCdV6
         9jgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject:sender
         :dkim-signature;
        bh=CeYLPDeJs/Q2CHPbJAGboBJzB5nYAhNftfb2R/nvU7E=;
        b=Q3upHESvX9snHYrSY+AL005Np06PSdGEAjeLVdS5ZNY+z764YOgT/WPjq3b+D/VP8r
         11sUwfs3R7N30R6QP6fp6uaiPPfz1/160d7RBUNszbjgb8HQaRRxlpksWVENMjiRl8IA
         nf6Y9KOLmC5GTFgYgbLro+Kle71LFQjZICa4WTNA7XExUdoinZm3+fyPbNv6Mm/YWvd4
         NcsxTGHaPx/q6IdpIeLB4unPqKVKUM/I6mJS/qdU3xhyMZiFhUH29Oto1Po6+639ABS2
         FSPl1t8SrVfKrV62ixoAZGeUKObeCWgXlJVOa7qH6cD/8QK2Y5XfFasNumlAP5msfQcp
         dzhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=john.garry@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CeYLPDeJs/Q2CHPbJAGboBJzB5nYAhNftfb2R/nvU7E=;
        b=kK4QdLpxR6tu7EdGD36aZNcxbtBJMooOrVZ65tF5D4JrOkyOsT8ITnVoi34/+QDm6w
         MkTNT8yxVXy5vHNKaiJtCFFORyOWapuOHUBDqOgckV6gCr6SIo8rggFb2dJnJKDii8v4
         E/ll3pUYW11V0PZFNiCqTF+XYMMNV+BA59RbQ/M0O+Hf13Lx4bzrlqK6FFZ1B+bPRGOh
         dDiceeBIecTP82nXbI4wqbTAmlA+pcwNBK7ca621GIHv5acayjrJ4bnOi04PmjESv2QO
         Njy87fgfKXz6KThZHgdJcsSIkslltIyW28525MLwmJUZfLWaMWjffqfOWjr01x7cHxKp
         q8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CeYLPDeJs/Q2CHPbJAGboBJzB5nYAhNftfb2R/nvU7E=;
        b=nJhCNUPW+BPruNCSXqMADXyaFEa8mhbPZS6pd/xSHKgb793fK/6UXM/a1aL77X+UVB
         N8PsPyfOZSefVz+HIigArVfb2dteZIvzciDcoXwtaDYSoAQjRX/o74Q7dK2ULYzOgsD8
         6XcX+Rujbxwt7Gpi1qhhL0A+bj+jr1T4TZNrf5hC1Vc8amuhcthLlaCndfpViGKDyxHA
         LM3Un8DiSECsF600loM+A+cg6L4UIDdkaFVdZFgoCf4xX5V9TcUCG1IfxN4qqh/+Sz0B
         zCltaFXy8oRheKXtG08+Rfxp8ffvDf97KvgNaH1BmLKsrBvYtbip77uWeFMxwdZBom+J
         JIvw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW5mUPcLNBtyT3COgkIjH5gOeVo0E4fMAyAKxazolJ4fWGxfDFt
	Xqkx8tI5+lrReMdkmk8RSRY=
X-Google-Smtp-Source: APXvYqxoeUNPAsFkC97yFSIv8tbJG0xv/b+tc7PtBZG29hTC73/b/1NVp5dbrIxskfQpvDZW8pJ5fA==
X-Received: by 2002:a05:6830:108b:: with SMTP id y11mr312990oto.75.1557413499816;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b588:: with SMTP id e130ls427070oif.4.gmail; Thu, 09 May
 2019 07:51:39 -0700 (PDT)
X-Received: by 2002:aca:524e:: with SMTP id g75mr583739oib.161.1557413499666;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
Received: by 2002:aca:4fce:0:0:0:0:0 with SMTP id d197msoib;
        Sun, 5 May 2019 14:20:34 -0700 (PDT)
X-Received: by 2002:a9d:6181:: with SMTP id g1mr14733568otk.159.1557091234465;
        Sun, 05 May 2019 14:20:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557091234; cv=none;
        d=google.com; s=arc-20160816;
        b=AmLOt3zJoChFkyX0ToJ8hZbeLKeFMIMVMuOPTWrBdKc1Ug6IYenxPeMv82BndCqShg
         U3tUpXZzOl8a9EPedhxCHeNkHlI5L66D6QFhhTCt91PrBxwSsHzsMwDruo++GkwpHhAL
         xQS+zef3GWBWgeuKPNiZn9HVXHL50FgYqgj+t3s61N1Ezr66x8StQoYnBnoTcnD+SuGG
         SJ47d9rnhnh9J65ZRFi8uPH8eXDxR2RMi20S88i1SQlsmF9Jlvgirb4IKg0F2HTE6GP0
         MYAmq1/VDwAE1h8LPwgiyO6sGG+Agljsd5Q/6vzZUOFq29x+SXYOD6lqAArU5GbT8EUJ
         gRWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=z1rj4B9kvCazJJBz8BAZ/+C0Lhtfp4/hPybJloCQgf4=;
        b=xTga7j3CfNpW+Qf+BzKqKajudv/LIFtOb6qqWC3vL3H+8uxD8Hx4Yl0asXqjYmn5WZ
         kOoblGpjGpCkM+QIAvm00ANbAdmzqJyZqU2IiJhqb/kIP4OL4lH2E37X2ykz8+oB0jTy
         VO2My0W5MDQ9VKi1iHTMgSIwtnVRHvToGtriSAfabTVU9MALm/dTTtkeDeSwKank+Wku
         6d/4vFzxaEHsGmWLmHEPYM5Si+qmfFIbDdfiN6wjSW1oLror1C1wmBwdCNCMJPcSV9ig
         fMKQP7+6hlsKo5cxNNSFN/XrE6z/nDheGR36jj7gmw06HV8WSDpnGSIDcBtyDBpSEArn
         bnhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=john.garry@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id t14si435688oth.0.2019.05.05.14.20.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 May 2019 14:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.garry@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 45E44452EC636B3761D0;
	Mon,  6 May 2019 05:20:31 +0800 (CST)
Received: from [127.0.0.1] (10.210.168.180) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Mon, 6 May 2019
 05:20:26 +0800
Subject: Re: [PATCH 17/24] libsas: switch remaining files to SPDX tags
To: Christoph Hellwig <hch@lst.de>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-18-hch@lst.de>
CC: Hannes Reinecke <hare@suse.de>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, Willem Riede <osst@riede.org>, Doug Gilbert
	<dgilbert@interlog.com>, Jens Axboe <axboe@kernel.dk>,
	=?UTF-8?Q?Kai_M=c3=a4kisara?= <Kai.Makisara@kolumbus.fi>,
	<linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>,
	<osst-users@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <c049de31-eff4-28b2-f4dc-4db2205895d2@huawei.com>
Date: Sun, 5 May 2019 22:20:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-18-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.210.168.180]
X-CFilter-Loop: Reflected
X-Original-Sender: john.garry@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of john.garry@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=john.garry@huawei.com
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

On 01/05/2019 17:14, Christoph Hellwig wrote:
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.
>

Should we update the Kconfig+Makefile similarly?

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/scsi/libsas/sas_discover.c  | 18 +-----------------
>  drivers/scsi/libsas/sas_event.c     | 18 +-----------------
>  drivers/scsi/libsas/sas_expander.c  | 16 +---------------
>  drivers/scsi/libsas/sas_host_smp.c  |  5 +----
>  drivers/scsi/libsas/sas_init.c      | 19 +------------------
>  drivers/scsi/libsas/sas_internal.h  | 19 +------------------
>  drivers/scsi/libsas/sas_phy.c       | 18 +-----------------
>  drivers/scsi/libsas/sas_port.c      | 18 +-----------------
>  drivers/scsi/libsas/sas_scsi_host.c | 19 +------------------
>  include/scsi/libsas.h               | 19 +------------------
>  include/scsi/sas.h                  | 19 +------------------
>  include/scsi/sas_ata.h              | 17 +----------------
>  12 files changed, 12 insertions(+), 193 deletions(-)
>
> diff --git a/drivers/scsi/libsas/sas_discover.c b/drivers/scsi/libsas/sas_discover.c

...

>  #include <linux/export.h>
> diff --git a/drivers/scsi/libsas/sas_expander.c b/drivers/scsi/libsas/sas_expander.c
> index 83f2fd70ce76..76ea83ddafa7 100644
> --- a/drivers/scsi/libsas/sas_expander.c
> +++ b/drivers/scsi/libsas/sas_expander.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Serial Attached SCSI (SAS) Expander discovery and configuration
>   *
> @@ -5,21 +6,6 @@
>   * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
>   *
>   * This file is licensed under GPLv2.

Was this just missed?

> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of the
> - * License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> - *
>   */
>



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c049de31-eff4-28b2-f4dc-4db2205895d2%40huawei.com.
For more options, visit https://groups.google.com/d/optout.

Return-Path: <open-iscsi+bncBDGIZD433YCRBGMZVTTAKGQEJNXMPAY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id D581C11CDB
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 17:28:25 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id e21sf1236506edr.18
        for <lists+open-iscsi@lfdr.de>; Thu, 02 May 2019 08:28:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556810905; cv=pass;
        d=google.com; s=arc-20160816;
        b=WK29m3SVcfDNfiD/1OR31k4/b59SgUVqkUM0UYD+UVoXkpwEfQ0MYnUGnzKa1dXz7q
         IFaUucNoX2BhA1kIcaJQF5ak5u7lp0sQoRPq+9pGBsP03zKzo5ICSzG4w4D78xQjYLFb
         Fh3qUlo7vlQS8AjN7ITLm/f823YSsLCmgBi7cDksyAUc9ZVjRGm5exjiN1uiziCK0iTL
         b94BwJ2clW4Z97gijXtdY1uEPdcbfepbI358T+7sGk05Cx2m/nni1UiE9U/JOOPozsMR
         dE6KC79XMQ3B/lcgpU31gAvzfJf3vtAHRaGunrE0980WPNuFa88JzzGfisas57IQoiU2
         /9sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:reply-to:sender:dkim-signature;
        bh=J4DAQn6CI8G5wByNOTUmF9TtuxbQCEwxCjPsFQh8Wms=;
        b=jemTeGOSY70Y7FBun1/73dzMIM188Q4R4uQJKBhF/bvnySHuQWfrIgPQ/OvvnxAV6+
         qCYdRg0DrZgs2cl+CAjdLqmbAxbChvyXtHlPD0PMyMoaLtIT55EzKMH9la5Brl2aRLwb
         KTIOHyRpi6T/rVXPsUCpu1NOnnbGp4T2jlMDthLGdO/Waj63J6eyh8wUlsVdisKx/saT
         2YWqmo27l/cu++KLQX+4vF0HocsgUNXm/G0LK0wBokkXsWKQwHZSWXyPrgzP14DO8wq2
         D1XPCTYSBtxGswuO+PM9Yhj5xCVyYWnW/A+cUiRrOlA+AWWoBWpqTSm+NLenelkWr/E2
         EOmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4DAQn6CI8G5wByNOTUmF9TtuxbQCEwxCjPsFQh8Wms=;
        b=S5aMNlAqqydfsjZbdCiEtktIlxGJW6wbjaUKSz/j5smBmdIwrn5YPfOaerdYGypWOX
         du1m58uuj0VWMLEh97ovzBOXWAipxaoMruyX2yOx/akwiC0UsbXbMqrNaeo9bNLAllq3
         V04gtdmY9EpxKqORRRsuXsFc2mx2ZVwY1QWp/69NSax4zF+UEje25W9pR7LtvCLqmcF7
         lflVXw8tH9IwuRYqVxeCDPLGt6ToOYyvpBp0iqZHU/VKhYJhnybE7o2TfYlqNeR0+2KQ
         r82vkn3O5bCzQzYkSVVWj+HyUGiBlpC2f+LQRnwCTunoMLPZRYMe7o0lpoXwjRYCcGwC
         3fGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J4DAQn6CI8G5wByNOTUmF9TtuxbQCEwxCjPsFQh8Wms=;
        b=a8vI0btsu12Y+FR6zdRox0O8muRwlCFfxXPterHWa2RooKBsQ9SYT7DgceBEvklMQZ
         /wULDEVA2RK0DpHZwZF2Ko56dbbo6QcDyTP/lWu17JI+Ww5ZfbvigyqHFHy7lmQIANwI
         DL0tydVj0KWbwtZnQgYPfWgURhxxf2d9faLmNiwG9hsQ+X2XLIk2A05i2j4oQ4WYIR3f
         jYOU+5U+bkoYjhZ/D5AXOXMrJ2IiXRLLXZgnpwUblsvXqxz92020ILSZwi1z3OSfHUbq
         4PYYypD5u5d2qIRqtSoSMM8wbzRWypN5UXxjTbdveeyHHtvsCw2WOL0YBiYbLL16vuHW
         4jUA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW5nKDlpzdlBeIP8KFGU5TVflyNi/dj1/sYfXeQkKemZo3kmpCI
	tkWWOZoeOFFfgI8GwO+YP9Y=
X-Google-Smtp-Source: APXvYqxJP9qG8uCW3sx93b//5J+VhV4JXI/Jk2ShFxS50ygKyTjW307hbnTR+u1Uah17ptPqM8TkkA==
X-Received: by 2002:a50:ce45:: with SMTP id k5mr3076965edj.202.1556810905624;
        Thu, 02 May 2019 08:28:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:b74b:: with SMTP id fx11ls364979ejb.3.gmail; Thu, 02
 May 2019 08:28:24 -0700 (PDT)
X-Received: by 2002:a17:906:2542:: with SMTP id j2mr2156546ejb.217.1556810904891;
        Thu, 02 May 2019 08:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556810904; cv=none;
        d=google.com; s=arc-20160816;
        b=iyvBToNGHhXI4qcTgPNNge+aV+UfzhmYrviu99JGP2X7HNpJdYyV/P6bglzrPO3fBO
         R6LiRMoPu4ilUoZ2Prx77A7lmRTW1reNc06Jn1pNhCAWirTanWtg7VA4mrBEOVquIrtI
         JNnxHhb7KxGPSmX71ZYGzGnMrsu2U2OJyrNrllSfJhTTcrn8yuNkf7FATDQu0l9ub0zY
         LgIp3AQAcme2O5Q+fzWrwXB/RgiXEZYlT3TMdSUKsGkgfYO6ffi7lQ5fTKmO1HRL/wTj
         GVkv8wpagcXoEvWZQFg/mX956Rx7tQLwn8zFPEgqYhHy+PQk5BgWAOl7vvq3H1eij/7w
         tnYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to;
        bh=5aOZa5dUblhaaPmMVawpfaRM/XQvZEGiRbt0rm1XIws=;
        b=tFJZdam1IHtiayZFij8hl+d0f+mgY4yVDQJQlHGituTSysG09Aa4DhIglSuJ33kJfW
         k8/kfP/8au8LkFLZR4xrOUoGszxE24WRzoXAzJ9OTkjnEh4hG8zVavlI+K3v+xV6d+0w
         Lr2MYU3eeyuX7j6vLJXAAvZt6frRp1ZInaGHr4pW8zp8rxVwKGcz1mLSaMOjI8qkGo/E
         MKPnIxc+6669K/Fm8mtH4MvFHBMhMLvvG0pAD+VE93aCjX9weN6NLO2kqo98Vfs+7Ej1
         uN2AMedLh23Jq5GDjMLM7MiDKjxY88Hz6P/Qw1U2yzlvrU7UzXNzrWihQxwCBjidAGlr
         lVCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
Received: from smtp.infotech.no (smtp.infotech.no. [82.134.31.41])
        by gmr-mx.google.com with ESMTP id j5si1905961ejm.1.2019.05.02.08.28.24
        for <open-iscsi@googlegroups.com>;
        Thu, 02 May 2019 08:28:24 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) client-ip=82.134.31.41;
Received: from localhost (localhost [127.0.0.1])
	by smtp.infotech.no (Postfix) with ESMTP id 31A8320423D;
	Thu,  2 May 2019 17:28:24 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.6.6 (20110518) (Debian) at infotech.no
Received: from smtp.infotech.no ([127.0.0.1])
	by localhost (smtp.infotech.no [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fB7tSKAzudgu; Thu,  2 May 2019 17:28:24 +0200 (CEST)
Received: from [82.134.31.185] (unknown [82.134.31.185])
	by smtp.infotech.no (Postfix) with ESMTPA id 05EAC204154;
	Thu,  2 May 2019 17:28:23 +0200 (CEST)
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH 21/24] sg: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Willem Riede <osst@riede.org>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-22-hch@lst.de>
From: Douglas Gilbert <dgilbert@interlog.com>
Message-ID: <c69c06d1-7bdf-b130-ee3e-3b3e4879f832@interlog.com>
Date: Thu, 2 May 2019 17:28:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-CA
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
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

On 2019-05-01 6:14 p.m., Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.

IOWs replace 3.5 lines with 1.

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Douglas Gilbert <dgilbert@interlog.com>

> ---
>   drivers/scsi/sg.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/scsi/sg.c b/drivers/scsi/sg.c
> index d3f15319b9b3..bcdc28e5ede7 100644
> --- a/drivers/scsi/sg.c
> +++ b/drivers/scsi/sg.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0+
>   /*
>    *  History:
>    *  Started: Aug 9 by Lawrence Foard (entropy@world.std.com),
> @@ -8,12 +9,6 @@
>    *        Copyright (C) 1992 Lawrence Foard
>    * Version 2 and 3 extensions to driver:
>    *        Copyright (C) 1998 - 2014 Douglas Gilbert
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2, or (at your option)
> - * any later version.
> - *
>    */
>   
>   static int sg_version_num = 30536;	/* 2 digits for each component */
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.

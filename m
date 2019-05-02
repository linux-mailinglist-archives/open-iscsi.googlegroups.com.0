Return-Path: <open-iscsi+bncBCHZVHVFVMARBDUPVLTAKGQE24KE4XY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 42037112DD
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:00:47 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id r7sf1344161wrv.19
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:00:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776847; cv=pass;
        d=google.com; s=arc-20160816;
        b=iIsDsPlAUyAI72g/dBadyeBycBSiv6dUz0m8HiRwMWt1wruo7hFRZ8ESPk6gX7aLHf
         vHU5ctHU7AQwhzcUoVhsbL+swXgxiuXhTJMv9aCD3f0VoI4gXqEv1VPttmMPEWZKxGXj
         s7KWt27xHcp+6x7k/u8PumDB08MPgbct357XORaUYox/iZpnjkXTjpKd3ubbsaWKKkD5
         YmWVA68cyUf/5rzt7Y/LcF47gRD85fCIW9vbewCiif33k9RSh/pKmxV2qFWPXtMC45kz
         NFwHreMPFoDg2an3ExnKytnWpq6FC2dJvdQXhCNBRclKU4BMMY4JBgZRiRJSKWbMZB0a
         UvBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=3wT9yPMLuXTdYWoqOr4H4Pg6MdDXpnT2NlUkBUK6Lvc=;
        b=Y7HtOSlfuk9StYOC5L5cHaWTOFFtHUDCoH92dMh7Len5RDQ/mO29XEJBL/vqOzO3EJ
         Em9Z8Cllnl0sRG0ZoJ2O+5V7oJgAWdK8JVhcCZujmTFuOO2dU1fdp/gNk1nhAgKk1IWA
         QirLGyQFJ9ODXwhHX5lNoYhitY5keGuw0L7FCc6bJkNlayLXPMUUejhmGrXn8QUlSRsw
         qGrDOzTgpFfLZLcoFycBlLJcHfB5Zszz8NPXaKKhovmjxsamax6I9EDohM0hKQTCiIpx
         ctvBhnEieXKzHtj3ZvEpt00kJxUYKD2ymRfpHvFb/GywJcRtu79r6ePS7bxtSByQihXB
         fjUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3wT9yPMLuXTdYWoqOr4H4Pg6MdDXpnT2NlUkBUK6Lvc=;
        b=Gv5ffrEVhcbc9BGT5yp23+9ZfihKhQxefDr7Y1RRPbjiKxpkuU0J+CuQLdLMr4rhh4
         sljY2ftTlFndfhwiLDTBm/APF6YXGphk7DK4LhL39AQwBccToS+eg8jJ3PUeIh/uUMIX
         G8mLlXbkUHMto8B8IM6mB+GNQkN5T8xtXnr7s4PtE/A6LuIumXAm/rNlyzOPtJVPIGqx
         N9tKxVhjiPFJFICAmx/RLQODMdZfINPHKtaicH01RicItI+40R9nRofmqmkcVAYGR63D
         drRHJb5ZbPTXay0MctiSE4yjv2goJo197UuE+jx1ItWUqBk7CBCfNcJVtmGpw7UX5Rg/
         1uUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3wT9yPMLuXTdYWoqOr4H4Pg6MdDXpnT2NlUkBUK6Lvc=;
        b=DM6WWQ0QAZlnA2D8wuKBN/BdZhKpF30FVljQyzoXojzJm2I9c/3rhvwCOQKtl7bHCV
         zjFg6msy8tMmi2kAUrVP5Y1icBEHlyi7PE6+tc9NnzD92Vf0Va/KHKI6qMtX5B3h864G
         PLWRiwzfzRAz2wf+UqCwq3+Trj5vfDXWSoXs7/PaJye7WznvA9ZOC/nDXW0QIrlaEDG0
         pB3iDsen3sYHeHqiiHORJ4x1DR8mGlbWqGnQEp8j6Cyd67TFNmqnV6PfFTtCumSFmaVD
         Q81120rCQpMyIN4v8PeI+YQyo//bNdxaE7qtr12ozDtOGt3gZhQwxhFS4qgypwapk7oi
         cuLw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUpDS1oh19PyflvB0WPtg7y600wj/PCwHX9Iwcioy9hvHF8NhfT
	cpwxIFpYqS1ciu58N1YK2OQ=
X-Google-Smtp-Source: APXvYqxNQay0QS/Oz8JpPpGZeLDryh3h9uCjdBmmYYJknA4HfPXigEP3gPNKZ55Jo8FyKkhPS+rG+g==
X-Received: by 2002:a7b:ce06:: with SMTP id m6mr891481wmc.62.1556776846985;
        Wed, 01 May 2019 23:00:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:a442:: with SMTP id n63ls295637wme.5.canary-gmail; Wed,
 01 May 2019 23:00:46 -0700 (PDT)
X-Received: by 2002:a1c:e3c4:: with SMTP id a187mr957230wmh.87.1556776846553;
        Wed, 01 May 2019 23:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776846; cv=none;
        d=google.com; s=arc-20160816;
        b=E3YWkH1MQZyi2WBPN5ZOz6KlbYWLOzQDNMg1MM9QfhgCwF4EVFuBcStOAHGc+YQtki
         f+9fw80x8kEc4PrFqRsTvk5snDmwG6cG9Ni67Z5R3CTOjPlctXalCocrfQ+bxs8B2YHw
         69gLYIZ32mwuA0LTbXv/WOeevWiysPd6xdxl3Bv6DKohBF5wEc3vQU4rP29sxn/rcvuz
         Rnzdyk7WsxBCHPO6VVHpsm30Bn79XT9JYaui4WqN9ilQpbPMqlxiS/6vxoqXqUmNL5kw
         Olp/owhanFOaonKs7B9d5q9lgZRBoQ4iPFBoWqqXCLS2S8+4hdn0kMDPh25lyCyNMyKm
         gWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=XuqDShpr44Lpi0/llx3W2M+Gh4oxcARV/r3uXBQ0e0w=;
        b=D1PgllZo6yzyDZmwRXm86RcFUyh2U8rOlU0o7kvpVSj85PodujLFojrr03Dd7Vj8Di
         6x3ZAQrnNybkA5MD+ksJllxtoxFVIKot9EfdX7X0HNd0CsSf5t8cru49SlDb0iDReIlM
         yt/u8hyhmam16fBXrcGS1K/o/XRGTvqV5UCWjNV54BDjmcQHNLZG9H83KMsn5ytXRJKo
         nboVZGEq4v9S4Sk7obCk5/6rorNtqIG0d4aRpcCIYfoKymzhujXUmy1tfQGOVJ4YZkTM
         PpVSgsw7zUK9W80d9VcJLLSRZGEzjrAxxHzopDS3vvFwyuJ4JIJ+hg4ZKu/Vmr21XhIW
         yeKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s3si765580wri.1.2019.05.01.23.00.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 30577AEF4;
	Thu,  2 May 2019 06:00:46 +0000 (UTC)
Subject: Re: [PATCH 06/24] scsi_transport_fc: switch to SPDX tags
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
 <20190501161417.32592-7-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <00c89243-be3b-f5f2-1b1a-6caca8213c28@suse.de>
Date: Thu, 2 May 2019 08:00:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-7-hch@lst.de>
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

On 5/1/19 6:13 PM, Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/scsi_transport_fc.c | 18 +-----------------
>   include/scsi/scsi_transport_fc.h | 18 +-----------------
>   2 files changed, 2 insertions(+), 34 deletions(-)
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

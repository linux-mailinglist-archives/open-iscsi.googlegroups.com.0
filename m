Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id D962E2490E7
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id d6sf14134054qkg.6
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKn2Bz5YW2CdTggyMF9DU9vf1evx01FaId8x91jETsnlRJogyMqEW+/4Z1IkLbNSj3
         sj2DA1f2XhtvVtrClPKUMybOCupEIMenTbSKxB2AkL9WYEqGVkLefh2z1+7mjxf0CZko
         an+NZl2BSlZPBrhHlQZxguphcgnp7LkTGZ3zUJ5aPPlLPGc9fytsksARTjPvQGhcm7k8
         yzO4welnQQIqQDq8xEsx4Opu3O7trUzb0418/OfZRPhkTBwSdKAW1x8cgtLIdhf3//ab
         8nsP0H8Drosni9dJKwQY/GIEeX80/c2jTi6L6aQjjA7pDAXYH6j8h6Es+Yc3qQgMP6b8
         JZeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:subject
         :autocrypt:from:references:cc:to:sender:dkim-signature;
        bh=3/J7kQWMVZatN/FQ7idde2nJ5c4XFo5Ir1pSLQ+A/3o=;
        b=BYgpS02O8FP7DTSqFL7Q7ryHq2nv8dNXvtXQs3tefM8iAmKzxCLEjqSL0xOMIYLFqj
         2tIN96IrnLC7JDUyjU+VzdJkcjGUyAmuRhQ2hDt4FzSKKMQRWXV3TAq/08/nR1Iip4YN
         DBLz9e/mE1yBHzFX9SviWn2kormcEx86N3bYB1kvnU9j4J2R1x4YUHJVEwLvL+iX1681
         flmaqh1FMmz+pBX3JVBL87rGdD0DUQi4PqeyLpY+IfBFit60IyecfZhRD2vCuKQYDo/Y
         vZJDe4DkZdujnTpYpKV3t1/apjMuJIEgpTtQ0syrC/qT4YksloW6BVSL3cQ9Czsq6wPl
         jj2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/J7kQWMVZatN/FQ7idde2nJ5c4XFo5Ir1pSLQ+A/3o=;
        b=tJ1pUh9luIZxgV70SlwPEhk6HzY82s23m33i0owLXMDG076r5zrz6OpxzwYNedrGi4
         lU4hquTz7lYbgH5Vb2PyTaAXKHbowsDTgVan3XGV8iHkBJ0GE/HxSB0ko17f9+EAfw9N
         nWFHP2ZiTcv5uMugnxqHJ0THVgudYYKOCDJuJGNwIBmgf7N658I9NENOU3p9TlaXl+1J
         D/Ep4IEkPUD9CDbOeQK3LAwWOOimWyr96QDYZNpIKv2+guFbxe/cOsiu4hm0p8Y2Zh3e
         QKmix8ytDMXBHCKKrjNYJb5YV5eZn8z3whznwEoem3d5PmMnszvzEbH8maY5uZRwwAGr
         u3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3/J7kQWMVZatN/FQ7idde2nJ5c4XFo5Ir1pSLQ+A/3o=;
        b=Qq0rDzwQ8vvOSiLXUzNAEBGbT++vvGZPYHbpx3REIPuCuKp2qM7rzSDjO37pLC82Df
         dHKzJv9GGx4KnJfn1n2lQb5h2TurupCb9X/+o/EGLV2a/SvGti7U5LdCjY0SzwlKfxcJ
         W81+0AeRc7z+OtyaCf+Ev7h82c89nIyUDDRW6LkuKIQnt8OBaIDmryTmZ1ERJlAGkUfM
         50DcmZU4oHBTYKwwJE/mnIGSs5ietJDLj44/iZKeAFWIH/7qTHPMKoZytz3GGbD3OtPH
         8xeKX41zz91x6VPlyCXqhU436sOUy7hqRTpYuEXy6xKR4U0eqxDw5DOyWXKg6JDfMizw
         5Jbw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533coNJqHZLYpn5nUTOqqJsK2DII9RHQwpNlu0mWSiB3wb9rhitt
	0KbH7IubNMtIok+4MskiOSU=
X-Google-Smtp-Source: ABdhPJyWkAJA52jScUhXhwgciW6Z9j4z9JWfvan/H2G6HDQPLQizhek2rPCl3Ps/EGFtXEPtrRINJg==
X-Received: by 2002:a05:620a:21c1:: with SMTP id h1mr19040719qka.178.1597790044919;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:25f6:: with SMTP id y51ls8570954qtc.1.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:aed:3728:: with SMTP id i37mr20372721qtb.347.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:b11:0:b029:f9:71db:3eb4 with SMTP id 17-20020a370b110000b02900f971db3eb4msqkl;
        Tue, 18 Aug 2020 09:33:48 -0700 (PDT)
X-Received: by 2002:a2e:b6c3:: with SMTP id m3mr10363593ljo.450.1597768427661;
        Tue, 18 Aug 2020 09:33:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597768427; cv=none;
        d=google.com; s=arc-20160816;
        b=kJZ8omdwjbxaepiyV2aOE88ISm/w5d3mgfiJeZRzoZdYaTz83sKaUpPX+XX2LYI8/S
         UER8nm3EdVF2JZTyLHFj6dxHyHnoVZsT52TBbOQamxzfuuZBLZiv86hfLi6u381CpOHG
         ZCa5m1TxuBnxYklGsmD48JeUn+l7Rb4qjNpyxPsL/MaHDMCGF1vIiO/whTKaTDnCA4kQ
         1cHI/EaB1iEp/RMtcLWkNKS9SMXK136Q0axfSaEYyKATjlRPCChYTLBBIG0nS9uv3Mnr
         QamSI5wDLGCYdtR0P9UqCfelS+sk46agTOEN5QRfIK0wKCInaz1rZhkmnGCno6Iw9Slp
         lZRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to;
        bh=X314X9gbxoKYselJtpgDWoAc9h3Sthoimz1EXroPZ04=;
        b=g8CuBP2LL3AF5U7OLrXL0xNKQVetefgeFgJDUX2cvDBM0iWTG4lX/S2NH0iE88lbhV
         H+FJEAf7FOl2/dzrzXUtgSE9lLLV7YhjgbYCjGSZEFWRkoPA5veczBmSNqtvVEIt7WwT
         8HC072US2xSQcFbtxJqMc6JYpYlZ4/dhxwszr2JtFCqq3bRNv1O/LbjooTBmcJZqxB8R
         /4jZk6iWZRFtcLGffylEnYiHrbECUuiySO8O5tchgeish2Q3+LAJ44A3ZkfJzTgdzu1w
         avPNqGM/QZypLx1xtFQrdRd8JFYSiln01VFgoejNtRs8JAYN9dYrEipW0GpcyJXJouhF
         VobA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 141si900563lfh.4.2020.08.18.09.33.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 09:33:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B66ABAB89;
	Tue, 18 Aug 2020 16:34:12 +0000 (UTC)
To: Christoph Hellwig <hch@lst.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, Hannes Reinecke <hare@suse.de>,
 Jan Kara <jack@suse.com>, Jens Axboe <axboe@kernel.dk>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
 stable@vger.kernel.org
References: <20200818131227.37020-1-colyli@suse.de>
 <20200818131227.37020-2-colyli@suse.de> <20200818162404.GA27196@lst.de>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de>
Date: Wed, 19 Aug 2020 00:33:37 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200818162404.GA27196@lst.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/8/19 00:24, Christoph Hellwig wrote:
> I think we should go for something simple like this instead:

This idea is fine to me. Should a warning message be through here? IMHO
the driver still sends an improper page in, fix it in silence is too
kind or over nice to the buggy driver(s).

And maybe the fix in nvme-tcp driver and do_tcp_sendpages() are still
necessary. I am not network expert, this is my opinion for reference.

Coly Li

> ---
> From 4867e158ee86ebd801b4c267e8f8a4a762a71343 Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Tue, 18 Aug 2020 18:19:23 +0200
> Subject: net: bypass ->sendpage for slab pages
> 
> Sending Slab or tail pages into ->sendpage will cause really strange
> delayed oops.  Prevent it right in the networking code instead of
> requiring drivers to work around the fact.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  net/socket.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/net/socket.c b/net/socket.c
> index dbbe8ea7d395da..fbc82eb96d18ce 100644
> --- a/net/socket.c
> +++ b/net/socket.c
> @@ -3638,7 +3638,12 @@ EXPORT_SYMBOL(kernel_getpeername);
>  int kernel_sendpage(struct socket *sock, struct page *page, int offset,
>  		    size_t size, int flags)
>  {
> -	if (sock->ops->sendpage)
> +	/*
> +	 * sendpage does manipulates the refcount of the passed in page, which
> +	 * does not work for Slab pages, or for tails of non-__GFP_COMP
> +	 * high order pages.
> +	 */
> +	if (sock->ops->sendpage && !PageSlab(page) && page_count(page) > 0)
>  		return sock->ops->sendpage(sock, page, offset, size, flags);
>  
>  	return sock_no_sendpage(sock, page, offset, size, flags);
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/217ec0ec-3c5a-a8ed-27d9-c634f0b9a045%40suse.de.

Return-Path: <open-iscsi+bncBDUNBGN3R4KRBGMVVT5QKGQERJOBJ4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 84604275380
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Sep 2020 10:43:06 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id hh10sf7242591ejb.13
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Sep 2020 01:43:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600850586; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQTiJZGgPU5hbLkPGUu+NV0z1pvSRsQuh8+vTnU08G7QAGuUgYN2n307Ko3+mRItLT
         Ct2mrx1xCw2DPoytgRlBxpqtT8/dIB/jmriXFheZmpQM+K+VEchDfmXyf2Yh6Ek3kzhc
         XiIXaZBR3H5p9ANTm8EJF/dEsioz08tRZdk6Kb8U4Hh1LZn53SG08jquFwpf2Cm6LubC
         +bDKbEkaMcXl3DkFakIhaceExNwh8VmOmafcDrY/V4GKDBk3N4NdUDfvnczdqs2JbGRE
         3AMJl0u91ZBSQU5UVYyqnkScqVSGdhZWH4kKnbA16uqKS33q3JONnHyrvFzpUVDl9Wxp
         J92g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ac6biX4txvSkCUaj0crjwpZzibcsY3jGjhqzNDEsVl0=;
        b=HD23XlyEw8GYxVyMEXuFVN3ssc1cZ9CvDS1+UAt6Xch6oa2Oe9NKWPu8oWSlTR2cB8
         iZZXauda9BwMGdEBtOZZpa/qQPveTqaWihl1W5dLUqWZDN+dQgn9cK5APfufKAHADLwu
         q3v/e86RZzM7j0WUKA8sB+BLQwxH4SPb6n00sDUfPCjdhl2hlEmn98Y3IFwJr4Jal71x
         j5ZmNnXLJ3f1hEcYRw7L2oi+6MBWAVDD69oKIxgy7BjPRXSaYMmrHQalxBSpn/GCcEYq
         /mm8ldegXMtbKy44p5G7x9/NG2dJpkEDuXt7v/57RHNmw0j0Gu5JlQfPtQB3OIHqKde4
         QToQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ac6biX4txvSkCUaj0crjwpZzibcsY3jGjhqzNDEsVl0=;
        b=lnDnM9m+hHJEzIDUmsqYoZCzqqXxNMepQlLqwF4JQB9Q7ZJLnd4lgUQQCg0jsQQ7iF
         IiTaJLOdAmSz5Ezqj3C7vcaVoU9GfxN41+wj0Df/3id9dClawvEYN3yr+g8sZxYqvkRV
         1sOWJz/T4vXNFkO9ezjqKGYodORBYF6KI6KcIx+4knbAw0t9IkKIQgDVKv2r6JmTLUTP
         2NsTGjuzWCWw9mQX4O0Nz7IDRr3RWf3ubpV+LbLsqay+mGMskattpb1R5IMCpohhrYsY
         YdGQluXARTrE4ERsynFYvXkBQqN/gEiANB7Dk1NHi/1reNaSMN9ZqLgdbLLaRPhMFduF
         pLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ac6biX4txvSkCUaj0crjwpZzibcsY3jGjhqzNDEsVl0=;
        b=LD7zDj7H3hZRrRk2qth4q0bWB0el3G0o0eLrU+G5yFOh0NplweLChbINbMrhyDIMav
         Pl2rwMiw8I6YNn9sYwY4vMdCK/V7VEh+2wp2cODP7boIb7F4elgcSXQqUAbt54EOohvP
         GZmtyPVrO1Gu/G7+3XyE8stxyGj3j79UM8H1CZhaENYIzG89Zbli4rzeQV3rL9SK/+tS
         HieA+Jy8AbPNkNuFSITgPQdyLPKw1F49SgnKQJqVwjUgh1OcSMH4oVWZCCkIp/Bl7CBC
         65sPoM1Be45zW5wX72gKYSSJoSTLTv5DD8ol4HKVv9Yzjz4UYNW9WFonp9VJSbzaAzqL
         kFgA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531DxnbWwt83wh+i2fHiWN+mGUTAsVvwSAThL0G/Otc9tJgVDXgM
	y3yxT2zx2uUtUE0PEkL8V60=
X-Google-Smtp-Source: ABdhPJwX/YscLuLMBaYH3dv7pg2qRpYKUmsKmBWl8OP7bGKoWmhk/GjyPNnuFHkFNRcPJKL7JA5EPA==
X-Received: by 2002:aa7:d648:: with SMTP id v8mr8683711edr.159.1600850586038;
        Wed, 23 Sep 2020 01:43:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:71da:: with SMTP id i26ls8181045ejk.6.gmail; Wed, 23
 Sep 2020 01:43:05 -0700 (PDT)
X-Received: by 2002:a17:906:fcc7:: with SMTP id qx7mr9593037ejb.254.1600850584975;
        Wed, 23 Sep 2020 01:43:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600850584; cv=none;
        d=google.com; s=arc-20160816;
        b=l4wyvm2vhVsj4aP5af+ZAL3woYjaffLkfQTOAOUHxjmyBz2mRMNlZSQHdReNuzyFsW
         RWraX4cNxDQEKgoTSND9q2KbNR4dsKoASn4z3jWkqfQ9L1UlxjWnKQf6171WmvWWuUNJ
         G6j/7oXUJDmAJA5A2YMZieDqj4CNsgBiLu7uKyb2nkf0ZfTUw8xdeF3GGqgtFGtOb3hj
         oBgdXCbOt6w6o0kH0Mp3Ftyeq3xuDSnEMbZMz57U+CFaO1zMTQxW68LUSAQFiml5+FPa
         zmPqZk07wkHkVjqJGV4RpumCTiaE0B24tnbt4c4uMfN26t2Uffin+TSGUhXol9tSFlP4
         mU5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0ywac5/8E5BhLpvPqmEY5iH6VbnNso2ZN2cZ5Fs925s=;
        b=xqjwqM8VSNbmj7Ln3BQ3p0ZmyydPla8FsaUMbXJcm2c3I/nv+uptIDODPddYD4vDK/
         RdB5afsBGk22HgEEPeg2QN6PnIuxxbMqlrpWoWgA7v/T4b+c6wS7lnkITCfZS2EhwLRz
         hkrTIk6PENnHwg73nAlDQphWtzPZEijQPTENejYJIHIZkbMi+PE6N/svykrHbXKLzRpy
         lAjQbRZFyOGK4TZCyx5B5JIdkotsmRG2Y+WQGgl4ZcFq4VObPFtkFqiWMhKikYWuCU+m
         Mgz9DsgZHeK0cnLgkAZSd8TKBPCcq1ZrM6umkYnV1yPn+8IFROXwZE8x22J7GcoeK09Z
         DhFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id t16si315243edc.0.2020.09.23.01.43.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 01:43:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 813D367357; Wed, 23 Sep 2020 10:43:03 +0200 (CEST)
Date: Wed, 23 Sep 2020 10:43:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Coly Li <colyli@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, netdev@vger.kernel.org,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Hannes Reinecke <hare@suse.de>, Jan Kara <jack@suse.com>,
	Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <20200923084303.GA21657@lst.de>
References: <20200818131227.37020-1-colyli@suse.de> <20200818131227.37020-2-colyli@suse.de> <20200818162404.GA27196@lst.de> <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de> <20200818194930.GA31966@lst.de> <04408ff6-f765-8f3e-ead9-aec55043e469@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <04408ff6-f765-8f3e-ead9-aec55043e469@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Aug 19, 2020 at 12:22:05PM +0800, Coly Li wrote:
> On 2020/8/19 03:49, Christoph Hellwig wrote:
> > On Wed, Aug 19, 2020 at 12:33:37AM +0800, Coly Li wrote:
> >> On 2020/8/19 00:24, Christoph Hellwig wrote:
> >>> I think we should go for something simple like this instead:
> >>
> >> This idea is fine to me. Should a warning message be through here? IMHO
> >> the driver still sends an improper page in, fix it in silence is too
> >> kind or over nice to the buggy driver(s).
> > 
> > I don't think a warning is a good idea.  An API that does the right
> > thing underneath and doesn't require boiler plate code in most callers
> > is the right API.
> > 
> 
> Then I don't have more comment.

So given the feedback from Dave I suspect we should actually resurrect
this series, sorry for the noise.  And in this case I think we do need
the warning in kernel_sendpage.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200923084303.GA21657%40lst.de.

Return-Path: <open-iscsi+bncBDXJFKUVUEHRBBWVXCOAMGQEYE672OY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F4F642EBD
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Dec 2022 18:29:44 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id bg12-20020a056808178c00b0035bd25dcc95sf5552231oib.20
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Dec 2022 09:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670261383; cv=pass;
        d=google.com; s=arc-20160816;
        b=riNZ675lHU97TizmphXaE/9TI5/kWtORIPdDtNubnPJQMOkGfpH2ouj0bYwcL2uQBh
         70VoZGpJYTygQZC70+5ehLwpYMqftRLHWUW68Qu3tIP6RgyY/PyPz4VytNIDAReoCPnG
         /zNXqJZUlMDpQ9Pub/cTXiuSQL5JkK0LDNzJjVF6YkD0HLELFya3viHlGCRoZh/b+fYI
         aye6cjd4iodG/aqPLHhGWPcXDVgb87kFhuMapE0tuBDg3KEDrc1QzubhXNRJry/8RIqf
         TiF+jIoUWktgytZNv0Rvw0+ofcp1aBrw2aTUqodUzDqriD2DIA3vEJZK0l3SKQ5nbDqy
         5UZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=tu/kIk9S6jssJzkASrToRYHYe3dtXoYBAbqM32vuYnU=;
        b=N0bUWQ6wWVibs0ik8TbosTqiJ+Evyhc4Fc6EqLQ3SUhQNQDhwLKJUUlL+jGC9u3En0
         erw53LK7WW24r+evQ2xd+T/UgI0xBSflnsaz204dxs3VxAw/2rQ1Ik0ueJpXGuGEiMQx
         bNKt7tZxYNyTiYOaitBcTXySIQoYjsISfm5c3hUc1+pyqYV8+EbPiMdIPtQJPNO2HFhu
         6Cr0rGORgS4v5ZRq+Ap0ofTBndBZVH3Psb2AgbZPGC4ey/WTnrcyeY3UhIaZUuwTJ75V
         v6yxT6MZNhq6Wqh4PdI+ITaF9wk0tpZ9xzX3LW6cw87IUQh42rR4lSNHdsX+jEoAXk1b
         4rIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cce6Epb1;
       spf=pass (google.com: domain of gnault@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tu/kIk9S6jssJzkASrToRYHYe3dtXoYBAbqM32vuYnU=;
        b=FBOTP/mn6zi/SGEtFr+lvsbCZMhHc0FaTzriFYVmr8l5XfdA9mqcuOrRYzu5jVItda
         6C4SBBi2Us8nyxoFkcUgiY/cSf7RzogDutQ9WXGr5QJ8Uky2os6gcnYULFlSJn0QO2wS
         bdEqDaWXX04MlBuv/+jg5wbBoZFaKIhYiJOzfWbb9ys0IRGkiOmSEPmZx8Y4PgShE+I2
         2f8ViC+ZCQ/3ThaieO74J/32VJcSJekXgh6/TYPyxxwiDE2CPYDYWTpfzqfrqTuw6HZy
         mTcdV5dqYcVaKWq6RiqlZa7kJ49lghv1dxO7hCea5VhVFDGATJxPmgwDE5dXn7uadAuG
         sZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tu/kIk9S6jssJzkASrToRYHYe3dtXoYBAbqM32vuYnU=;
        b=YJLbUs3+sD04FnBS1r53ZbQxV3FW9Du75DqPBxzPi6Di+iVZKoQlfZ2ii9NELgwHP8
         f5EkAM3ZQy/UoXCP0mmmnw46Kst5hhVy5xChFbMv7TUsDd3Yp2S5oI6iWnqk5i6zyiMB
         PbCO1m20hBpSWjfKHjqFKze6ruvJwDi1ld36CIZNcqTQLluoQj1dkqsNxL2fxl/RcIqT
         hCoJjSCtoqN80+xJ5pfwbpKyKE+BOyT+sIIFq5XC85Es3Bg77Rvspt1l3TaTFHbhEuRp
         oCvRsUN//1lxonF8i8sv1ELB5aiGWkWRqwIDZIc3STcp9hqYW4Zv5hw6M2PYqB7u5GFj
         mI/g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plzr7A02tclfh5kUtiPCxi0KwijaI7pPG1CmgdohRAfBQevrRCo
	OnDhZDuE2ctd1DIzZyg9owY=
X-Google-Smtp-Source: AA0mqf6JgnJunv+9mKh6UH8uOYdJHyWGTiY5SeFVF8x/8La2wlJSvk1SByyEsMdDBbf6Vdy9pkeDDw==
X-Received: by 2002:a05:6870:498f:b0:144:a464:26bc with SMTP id ho15-20020a056870498f00b00144a46426bcmr2488148oab.53.1670261383174;
        Mon, 05 Dec 2022 09:29:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:71b:b0:141:8ce4:295a with SMTP id
 ea27-20020a056870071b00b001418ce4295als1738786oab.10.-pod-prod-gmail; Mon, 05
 Dec 2022 09:29:41 -0800 (PST)
X-Received: by 2002:a05:6870:c352:b0:132:d3f8:bad4 with SMTP id e18-20020a056870c35200b00132d3f8bad4mr38828562oak.58.1670261381865;
        Mon, 05 Dec 2022 09:29:41 -0800 (PST)
Received: by 2002:aca:b745:0:b0:350:c1f3:d913 with SMTP id 5614622812f47-35b761cfff4msb6e;
        Wed, 30 Nov 2022 03:48:43 -0800 (PST)
X-Received: by 2002:a05:6870:c903:b0:11d:ea64:7ee1 with SMTP id hj3-20020a056870c90300b0011dea647ee1mr37374425oab.205.1669808923441;
        Wed, 30 Nov 2022 03:48:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669808923; cv=none;
        d=google.com; s=arc-20160816;
        b=WNRQlA6u8eK0GV1zjKM9cXQpb7BgN4J7+VsEiAjXM8GupggERBOylN3NcPDx5OlcGs
         Vj6UfXSidQbPmR5IQsAgHBLiaDMqQhZOr5yeUQFGLMmanT7D4Zd0BWYFvxC2k0e5VBqH
         XaiDw1w8/tc9fk690n0/qMz2IzvKCOoS/tdKhR57yZaC2VVMQoDP7IjiUkZUf03OJa8y
         Oi2ty5T1EDFjB2kC6pKrgzJb0ObN/SfpoCXgaZd33bFkEB8jNNm8AE/knookswZzq1ex
         2KQsqP6LkIgSCKz8Psb1VjPnMKe4N6QxFfnZEDRPLgXNrhVH4cJ6i2ETb8YUShHKpHCz
         xDOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ew+rmcqxH2n7lRVyzxgZ+S2EuF0zHGkt1auf+7rBZUw=;
        b=GuSqBvw9CRPrh3bpdK/QXAxX7oCeQ3BBb5M+RP6uZobLIfgHouWzwg9NfTSAzzjArL
         lb8UCFmeJahPgUm23mu3wyZ1CizvhTu8pB49fR2JKc0yObc80ADV1UvHSGRRcqKbPFSU
         pE++2Klt+Wp0qUN6oOEH4pSnCh0satKRjyQ7229D+4dnuOj2ejcI5YzF0THpXSOb2fkq
         XLVdvKtSOGTFI5qaqnT1XJgOCrQQlBLaDwzWPL3CG5TqEya5lvok/CIcRFUT1fUU+2iT
         +V4SjZQ+DPZ2933AQizz4KFUqpiG4GBqeifBwt9fi+3bYHEQSjHPQsGptYR1h+vOIwn1
         cL3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cce6Epb1;
       spf=pass (google.com: domain of gnault@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id x31-20020a056870a79f00b0013674fbe780si145134oao.4.2022.11.30.03.48.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 03:48:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gnault@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-65-BOloIpy3ODKOItimRch_jA-1; Wed, 30 Nov 2022 06:48:40 -0500
X-MC-Unique: BOloIpy3ODKOItimRch_jA-1
Received: by mail-wm1-f69.google.com with SMTP id c187-20020a1c35c4000000b003cfee3c91cdso9285079wma.6
        for <open-iscsi@googlegroups.com>; Wed, 30 Nov 2022 03:48:40 -0800 (PST)
X-Received: by 2002:a5d:5f04:0:b0:241:e9a6:fb3 with SMTP id cl4-20020a5d5f04000000b00241e9a60fb3mr22408076wrb.462.1669808919570;
        Wed, 30 Nov 2022 03:48:39 -0800 (PST)
X-Received: by 2002:a5d:5f04:0:b0:241:e9a6:fb3 with SMTP id cl4-20020a5d5f04000000b00241e9a60fb3mr22408062wrb.462.1669808919318;
        Wed, 30 Nov 2022 03:48:39 -0800 (PST)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
        by smtp.gmail.com with ESMTPSA id 16-20020a05600c22d000b003b497138093sm1620841wmg.47.2022.11.30.03.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 03:48:38 -0800 (PST)
Date: Wed, 30 Nov 2022 12:48:35 +0100
From: Guillaume Nault <gnault@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: Benjamin Coddington <bcodding@redhat.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Christoph =?iso-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
	Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
	Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Howells <dhowells@redhat.com>,
	Marc Dionne <marc.dionne@auristor.com>,
	Steve French <sfrench@samba.org>,
	Christine Caulfield <ccaulfie@redhat.com>,
	David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
	Joel Becker <jlbec@evilplan.org>,
	Joseph Qi <joseph.qi@linux.alibaba.com>,
	Eric Van Hensbergen <ericvh@gmail.com>,
	Latchesar Ionkov <lucho@ionkov.net>,
	Dominique Martinet <asmadeus@codewreck.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna@kernel.org>,
	Chuck Lever <chuck.lever@oracle.com>,
	Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, nbd@other.debian.org,
	linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org, cluster-devel@redhat.com,
	ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
	ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Message-ID: <20221130114835.GA29316@pc-4.home>
References: <cover.1669036433.git.bcodding@redhat.com>
 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <20221129140242.GA15747@lst.de>
MIME-Version: 1.0
In-Reply-To: <20221129140242.GA15747@lst.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: gnault@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Cce6Epb1;
       spf=pass (google.com: domain of gnault@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Nov 29, 2022 at 03:02:42PM +0100, Christoph Hellwig wrote:
> Hmm.  Having to set a flag to not accidentally corrupt per-task
> state seems a bit fragile.  Wouldn't it make sense to find a way to opt
> into the feature only for sockets created from the syscall layer?

That's something I originally considered. But, as far as I can see, nbd
needs this flag _and_ uses sockets created in user space. So it'd still
need to opt out manually.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221130114835.GA29316%40pc-4.home.

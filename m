Return-Path: <open-iscsi+bncBCYMVIPVXQMBBGMNQCTAMGQESFMJLKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68165762028
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 19:30:04 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id e9e14a558f8ab-34611cc7b18sf42538985ab.1
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 10:30:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690306203; cv=pass;
        d=google.com; s=arc-20160816;
        b=GHDtSBEbBr+0+I64qS3jxgaXvwEV16ehdg2SmCXAWf9aRmXL8CY059hztS6uoYFCMt
         58kQ6CsOokWsbWSNNGjsJCMOd3DefNvulR7eIHoAty+4uMIBX1GBPoNuS5hA2u7/LVeB
         tQmbYJKwLSMPop+/lxvj2YbtRf0wEhUN1HZ3e0G03eneXAGcxl4Ap8CWKoIHnS9OK4Hb
         Rlm7TmCqY6LtoL+t3676exwl2T8KKwrNCmjhcc40zF/MhT4X/Cxzt9QyiE3qsijL7qHj
         UqJBwWL3HLA/tI99gW1b6Mb2wvKjQ4QkAaSqxqEqnq+NDAcMTgz1SQ43dEGTjL2TFhmS
         MJLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lTHWWwqB3mGmwIuNfqunLH352wfer0rmH3FNnvo2rQA=;
        fh=8bPs8y/KlPXC7TlZQpLZSsGPJE7T61QFvRQbWZKiTAM=;
        b=Pbc9JOmGQC4ogBaSuZEw4r57Y/MPLMdxJfnlsX5ST7u8T7Uu9l/wsTdMAe3VoQy5yj
         kCmmd1bBLCqjf7kFD5/f206utEEWJaWezpmjci4o5oPFRQAsXt/36f6FZYE3EqW/qiHC
         aL+hEjNNJoSdyxSSGwt2LhkQHmghsItb3SEQ5MIWTLXINPAtl+kFkxStycx1cQRvsXWn
         TX+eJmDah/lRB4VECti0cFwfz8R6cMQsAXNXIuSjw0nCM62UXvQkDLwRXqX4o1p+UDqj
         2ZmGSUT0g7pbf3LxL+6wGjEYIkJp822mfZSIAQm6tDfg1mYRUm1wo84WNeWfoiK0CqKm
         FURA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AE/KH9rT";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690306203; x=1690911003;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lTHWWwqB3mGmwIuNfqunLH352wfer0rmH3FNnvo2rQA=;
        b=n2X2EFxqoeFsn/YPswTS17phk16ponE5NJeLIuHxLupeLuoiPO51E9XfhsYbBryC8x
         FfGyNkvv0NXGBMi6aHkRQlM8VPcn0ONFkW8SBIuGZ+tIaV0YT7GFEn6Nhcao77jo5iH+
         jn9v604Hk5aOK/KZkSgvbke2N1NlfFDioR+x8zy9wfFFQaH2/rOIw4jqoai8mus4rsNc
         dtbhw4f7zdSjNQ9nyXLYfskl4atKuACXiEnr/KojgaLIwR+TdN2Ape76X7gr6i3JN+Hy
         zhjC3zypowf7a+DWZSokZs6K59SIoYbsSlMfeV7Kr5/enDDXersXokmFN6jZMoFxaI5K
         /W9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690306203; x=1690911003;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTHWWwqB3mGmwIuNfqunLH352wfer0rmH3FNnvo2rQA=;
        b=ghCceNKnXj4x9O0EIqhGbHhb1ue7nGvWRGafqabisMzPrQ+WpwmPQGgLBg+fOwsXt/
         XQdoBiCayL9AG+qbJ/izDat+F9EEIVBKqaZdpvFK4aNY+p/p7Mte+GU6wmf0whJac0Ve
         cQoUsO1+XIBLSWI6dYuNev5wzGT8uZQC7i6V9eCPNIGFRLekrArudQw3kFq361ykAF6l
         mWOrz5tOojJPu5u5eWWsXLZmlVYyOsotBJx9DUxfmcQMgR1m8/P2OB3IY6ip5U4mXlYS
         bHhKE0Nbotc5KybJJdGZwVXQwcNo6OafU+BT7BPSYAx86EOJ4gHpM27MOp9c6Sc6QsfT
         0xiA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYIryuT3EDXwREVBvmVTOKOTx/q1YOVahJUnLRcGERTwVqYUAGt
	FyivPKbPTQ8t9TFtzJGO6Ko=
X-Google-Smtp-Source: APBJJlHu/dD0KtnhUAL+q2MKF2z0oPN9W2ydx9BjEMiGlPJF8O7/RAn1/WvtWseYCzmJBI7x+3+mgg==
X-Received: by 2002:a05:6e02:13cd:b0:348:8519:1291 with SMTP id v13-20020a056e0213cd00b0034885191291mr3605251ilj.2.1690306202806;
        Tue, 25 Jul 2023 10:30:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:7611:0:b0:346:4939:c1e with SMTP id r17-20020a927611000000b0034649390c1els375114ilc.1.-pod-prod-01-us;
 Tue, 25 Jul 2023 10:30:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:cd0:b0:348:a412:b1e2 with SMTP id c16-20020a056e020cd000b00348a412b1e2mr3378853ilj.14.1690306201120;
        Tue, 25 Jul 2023 10:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690306201; cv=none;
        d=google.com; s=arc-20160816;
        b=gvef9TPiM6IFyhlB/CcrSPlIQMBc2G/U9jI+t7ez3H96AsBvvl0fhIN3UIgu0cbYJd
         5vb8jFaaFEWkhcbVdkJCturDHyEF8vhmSuWykOaAHFjnvIpyKlQ8CG9kt9WED/4YlJzQ
         5xK8cIejYO0n8vXILTroQAOb0Ut+tI1rOpheOSP+A+RWDtSGt8Uk93Iq5hWuAbgzcxy8
         sfGWwJjf2PVyponZu5RPz8UsZyxC/ldYBSH9eI+m81k2kO7i3bX0drEjjpj2fZpkrCq7
         aD8kfhXAlqk8rQTXsKZtQt2NaMePHd/InyFBgdkuG7tqFJTBs1u7zHqkN2NuhiUsESim
         kd9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K3k9smGmZF7m5VBPVQUcu3HaBfspP9qLCOq38eKmMNY=;
        fh=8bPs8y/KlPXC7TlZQpLZSsGPJE7T61QFvRQbWZKiTAM=;
        b=YP7OxQMSgsOorUEDb1ldxy6sFoPdQhWm4SfYHfajpkTUuR7+QEJ3C3XfYrN+aCdJbt
         q8ZciwT1z6oad5xqKba0ob61qGVsHsa0sJTfLinV9s7EAUMwcZWXktiLaTh2P+SSjrFj
         o60lygC3N6kJVb92nY6ZmbgcveDhKdr7ClG167Iz1ABcrNdHsR56QDhsTUvsKDrz6VRz
         +U1ewhEtE+w242klnPPkAvJHgEIqFfAgPIQfwTjGcL6H1ffzMfkOOzsXMmAezYswqDy5
         HuZQkjtUrcliOOHDBLMDsIQueri1aQJyrWkhjsBE+ekzF5z2kDtzRqod8TwLpl9Ftszf
         i2wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AE/KH9rT";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id cx10-20020a056638490a00b0042a49b96029si1139897jab.2.2023.07.25.10.30.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 10:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-378-LYJb3y7xPD60H43QWqTz6w-1; Tue, 25 Jul 2023 13:29:55 -0400
X-MC-Unique: LYJb3y7xPD60H43QWqTz6w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D3A5104458F;
	Tue, 25 Jul 2023 17:29:54 +0000 (UTC)
Received: from rhel-developer-toolbox-latest (unknown [10.2.16.250])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52DED4094DC0;
	Tue, 25 Jul 2023 17:29:53 +0000 (UTC)
Date: Tue, 25 Jul 2023 10:29:51 -0700
From: Chris Leech <cleech@redhat.com>
To: YueHaibing <yuehaibing@huawei.com>
Cc: lduncan@suse.com, michael.christie@oracle.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, haowenchao@huawei.com,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] scsi: iscsi: Remove unused extern declaration
 iscsi_lookup_iface()
Message-ID: <ZMAGj/yb5XrcPq5d@rhel-developer-toolbox-latest>
References: <20230725141531.10424-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230725141531.10424-1-yuehaibing@huawei.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="AE/KH9rT";
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jul 25, 2023 at 10:15:31PM +0800, YueHaibing wrote:
> This is not used anymore, so can be removed.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks,

Reviewed-by: Chris Leech <cleech@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZMAGj/yb5XrcPq5d%40rhel-developer-toolbox-latest.

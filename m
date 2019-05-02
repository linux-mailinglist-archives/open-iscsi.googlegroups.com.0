Return-Path: <open-iscsi+bncBDUNBGN3R4KRBSWQVPTAKGQE5PMLMXQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3F11963
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 14:53:31 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id n6sf329531lfe.1
        for <lists+open-iscsi@lfdr.de>; Thu, 02 May 2019 05:53:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556801610; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZMAr0j55UZlWtYHBLdnoYTe9T3Pk7qvWuPrN2SFAghiqUBcGU87d+f0/0bFoSXv1P
         l+uPAyEFphK1yD4JKs3LhUgZ1dbBEEnN+XoaH3jODzAxnbd9CEaVB/wTFSyqOggFu+qE
         JJLRMD2hBYJYohlLtoL/DQVq3gARAx0yJBeewIYwaSkT1LdqJp/CpaG9AM/jf5HD0DpJ
         dKXGAQGXd5gg+aI4NHUEkComuw0S0jJAXCii4OEG1ytPz4lTT0nhyXjDHVk0nvDPOaab
         ziAI62pZgh4Ykyl6tIqLBrvL26cGtxsuKIMglfb/yrgoPWy5EaKhsCju+azO304gwEMu
         9kQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dK7/tCS9HdM8UMFzDKnivMF6BRZoa3nnVcdK0pwGIlU=;
        b=aTD91UHs7d6WtUoeRKwJmM58+U/Rsys1KDK3H3dQnv6uJzwShiczY9ETK6JTgjai7Z
         suyQgYmL2Hwvsz0V+yD3R5eKWwHif9eO4yCVVmvJ/ydUcmw7ybXIWfXttbKY96NmGKqO
         qYr17Mohq7fXkcMT8xpawFwnXOuajClCpjuvaemFsCnbOXFBtw+96/6iZLGQ6Mf8BiMt
         qltsgycT50P3Z09gGRveNeLDfnY1enzjE6kokaxosWGQQSTvyMWN2449bNmgrZ9/svvh
         EcIOUDipY91spT4JGiC6hc2ocSYeYS/BD9WYbQZmROuAMM/GqxdUytAPG+w5BI/Mt7F2
         fnSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dK7/tCS9HdM8UMFzDKnivMF6BRZoa3nnVcdK0pwGIlU=;
        b=NFLbh5DWG5JV7bzrKH11F4yZq5niuD9aE9Ma3Kv3/6CrQE4107QY6CngevDdWmbn82
         wfIo/7vtviuwgxlXjxllxIZoWKbEogZ/5H0BuyW3TjUtboIzWn2o7mgaPWsF153bAYIR
         ItNI5rny+7EcIsTaUkS0oqHynM/oFpXctKLMh1i+b94m1WPy+IvKbE8t/2ZEUfrNUP7q
         RpMSnGBVHg+MFO9MhJrtNsN9NvpvIz6lBsIVH39i2MiMjUSjCCFuKetpE02PKxBSaNEi
         vEon3ytCDcHlxvRHR/4vIkyXKkFNd1VEr58Wj6gMDJPaNtr3z9XcR7Y7A76YwZM4N5l+
         ug5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dK7/tCS9HdM8UMFzDKnivMF6BRZoa3nnVcdK0pwGIlU=;
        b=FrrK4RSfDOetPp2DuNWK05Y6oxHUZP1aA8D7PwpqS/NjRjazQN568p6yys9z2R9DQD
         /OgkPwRj1aIQMigIt9dZTHR5BwobEPpKLqe6EPZ2wMeeZDaYU5DzodMzCqlEd/8rkRcI
         Xi6ZvORZiTZ3wQZepwzzMkChvmbIr6xZer7Mzclfnh2t1b9ip4tu1NbukMbvlaAnedSK
         rvmwLuliU8YtimeSVkb8xvcNQB6lxyKCYrHOvepWYWsKdS4mIB8FcPl12TBkzLVm8K4D
         DaB/iT6WZiHftN0OKKpz0XobZHtd13nX3QXHIvdjr0ifCrQRg+dTNiYwvNafzqMtp1MI
         RvXg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV5HnNDaze4RwIFBy1E72TVFF9eVcAkDhzswOpAEVjlfT3Fv/8m
	56mI8RXyC2ZmRjA7EdOgSlk=
X-Google-Smtp-Source: APXvYqzUL7hKnOMw63QMTM8oN+yvFEheMmxYL6grTL1bXfDOiCFgKTMFAPFVOHF3RVRGe8e0YKB39Q==
X-Received: by 2002:a19:f601:: with SMTP id x1mr1897723lfe.142.1556801610774;
        Thu, 02 May 2019 05:53:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c88:: with SMTP id x8ls213899lji.1.gmail; Thu, 02 May
 2019 05:53:30 -0700 (PDT)
X-Received: by 2002:a2e:9689:: with SMTP id q9mr1717590lji.194.1556801609986;
        Thu, 02 May 2019 05:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556801609; cv=none;
        d=google.com; s=arc-20160816;
        b=HmL1cMTOFA8SK/PZYIiB76pxycHd/0uB8ejzyq7YHBiDSF7U2nxNQQmie5NwZ/zqI+
         A/80AdmPrPaTHQ2Llh/QQd6VDw+P7e0FWf/v6A0KdIIAnjq12Erz5i/rEDMecdq/fobu
         nNAnBYz7AtS1+7yAPxH3bMPMZ4ABDOt+yMR635Txo0ziAq/vyYU7fAugT0ae76SYJVzK
         QbPTRJaDIqeQpCWmERANlc8icZ3py/mZdX9I059PPORureB4BVLNKvzr93eKNmQ0TqS2
         POGUYFdosqZzaYsccMmLOIH0VhRHibxLAbAmOErvA4ivdzA6NrGRuRuXZFDDpjWc/Nmz
         d22Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rID1Ifrk2Atu/VgpBbdi4WJMj5o67ru2D9at9CYpOK0=;
        b=CSbdkogXh5TUcgArz2o16Sg08i+I3rluB27Lt/Pj3VKoD7NCBZbx4SS7beyReRkyeq
         CT7n3U8nOMc1TNYfrK0axytBJ35uvsLWGfTO9tIBTRSfEiZ3CgXRKXGRcsF1qsNISPeY
         /z+OCwhwHCs6Qf5jl4sAlp0Npvy2VEY/kunfaBcbZpakvoA7eq0Dg7bzyO5uuAqFZm/S
         sW6zhjVyKeZTlIfKwSAqghF2zmNabnY2zU904vnp5/dk4Mbm4r03u/1OIjTaIvwzzyRR
         hnOpSsTI+bVDBgsk9GYCxNGeeruO6hSb7iV1glpc9lKQtlAZeN0JO72gwx+O41HJtSvL
         cdEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id x14si116839ljh.1.2019.05.02.05.53.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 05:53:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id E2FAA68AA6; Thu,  2 May 2019 14:53:12 +0200 (CEST)
Date: Thu, 2 May 2019 14:53:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Cc: Christoph Hellwig <hch@lst.de>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
	Jens Axboe <axboe@kernel.dk>,
	Kai =?iso-8859-1?Q?M=E4kisara?= <Kai.Makisara@kolumbus.fi>,
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	osst-users@lists.sourceforge.net, linux-kernel@vger.kernel.org,
	Chriosstoph Hellwig <hch@losst.de>
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
Message-ID: <20190502125312.GA2560@lst.de>
References: <20190501161417.32592-1-hch@lst.de> <20190501161417.32592-25-hch@lst.de> <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de>
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

On Thu, May 02, 2019 at 08:06:38AM +0200, Hannes Reinecke wrote:
> On 5/1/19 6:14 PM, Christoph Hellwig wrote:
>> osst.c is the only osst file missing licensing information.  Add a
>> GPLv2 tag for the default kernel license.
>>
>> Signed-off-by: Chriosstoph Hellwig <hch@losst.de>

FYI, my s/st/osst/ on the commit message message up my signoff, this
should be:

Signed-off-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.

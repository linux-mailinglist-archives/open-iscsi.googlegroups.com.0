Return-Path: <open-iscsi+bncBAABBFPEULUQKGQEKSWHJZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F146731F
	for <lists+open-iscsi@lfdr.de>; Fri, 12 Jul 2019 18:15:19 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id x18sf4805405otp.9
        for <lists+open-iscsi@lfdr.de>; Fri, 12 Jul 2019 09:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562948117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qlecs9mTgYhLYzO+pdsqvGeyBlKXWF6Ns0ZQBbZ/ldnNdU2McG06dGutFb93jblhsU
         jMRfAAn1aZh+RdLWH7Y4htX+1HyU1asSVMFNvcqknM93JshNydTiHo89AQAM9Yx0Fzyh
         IYjZTbf1FeAPRj6kq0M7QUgnmwGhhwT0vdOB5vaW8D0ZPEnUuCwXSBjdFLMGcypprVPY
         pWGuHxKfI7cyuu/+JarCVgeqR8mpFWRExs5meoSFnivMFvMx/xx3iD38PZBJtaKYmJxZ
         XYWbd1qmTYoeFl0aMlcVgx5XCRQxMpRO1dSsKwkaY9xgbgQPAobpi7Ibw4GOs0BwcyC4
         YxCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:subject:cc:to:from
         :mime-version:references:in-reply-to:message-id:date:sender
         :dkim-signature;
        bh=IHQbMlOiK2HasYj6nz087DSU5zGXx/D4fhNgCKaWTd0=;
        b=VRKf7mC+tqK4GDYa37hM3+m0nqAhLUEIUpCDIpy/3SfHI+21to2EYfYJSKdks+7Q8R
         nOldFVVnjtA9B72PI9y9Qc01gyDPzgoF+8IjiTgJkEUbsdOFb/Uz1VW+wBWRVYaWM8Ck
         NrrHLZs2GYioWMD4eDzdpWS4maK1whLBtA8gOX4MwnWCIGMYE/JuWvkvfd52CyUEnMLP
         I5SYH4S82KkXq1biDKlWf2IBrqYjwHjPtb6dw/yFUJxmg7eoTBZwMKYYZjxIVpb/qyTU
         zBoFOTymU2zu/Qrmg+G/GjhhY96woVmm/3N3bSHYnSmazpMzsiZFrOKr5Tk56vcZVVh0
         gwwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:in-reply-to:references:mime-version:from:to
         :cc:subject:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IHQbMlOiK2HasYj6nz087DSU5zGXx/D4fhNgCKaWTd0=;
        b=lFZSRhbT9aTCoVxilzrhYS8tLbFSfVAvJv4+JdM/kwMsta7aJGaxchffraHpywF0rF
         c8wAzP37FVSmmffFYvEEI4KY8tBovY0XrdNXO8ABeGIgADy1zY+zwpxEzey9v7Myr90e
         UMiu/TvK8uOET3NjVYvkfEWNfpAkbiqT8RXPTYDK9llXso1AbNU5JiaH9wKKcFsgOUsq
         VppWnsxndrrCk26ctZtu1mnW1FwniNbX4JN+zepK37Z1wUWhQpLv8EsbY9GHqlDsgZF5
         Aze8Fv7lFRgQMMCnRVyhbB58TONcg4IWcaLciXdH9mb1nWdR+gvozzjLwSS8hSKq4r3J
         99Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:in-reply-to:references
         :mime-version:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IHQbMlOiK2HasYj6nz087DSU5zGXx/D4fhNgCKaWTd0=;
        b=SUEWKF6i+wouD5wX18/9Vj4Qy4ruGOJnL/wuOkACQ+vbAjmyddV+0r3in0zbWMDZP3
         ppJfEDNEGxDpLAnRj2rqtTTL2AZcIszBD0SnsiQkoXq0EBKS2SGTpUnuv+oBVl5Jqcmg
         tztaXjkpGcH3ojF5oabJkEKDrgqLyUdA5SNR7tg7LQKsdTOWl4XzuqH4ZfMp5A6r7Jf3
         0C/QI+E8hWf5x0QC5VUg/+/Lw7fMqwpGIzMotBCkTAvokLF5xYp+B3uOFAIkScKNzQSw
         KxxsdgSz1CUUYIVQkCVfzaejWtFW+gsbuZayxPgdzF42xrYtpaMKoQtjlSnGHJqVZzGO
         mbJg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW9qub+X/+zOutDi6dbJxQ1QTY9QGQS2bY6WlfTGl3Hs43cf7VZ
	wGzK0sSCDpsC/wLn/l8OnCU=
X-Google-Smtp-Source: APXvYqylcRuyxAtX3l+N8QTqgdU1ScjbNRGdw0CVEkcAApMpXKC0IqmoGR4H/JVJ1XRQR2YxIZYw0A==
X-Received: by 2002:aca:dd0b:: with SMTP id u11mr6400405oig.162.1562948117797;
        Fri, 12 Jul 2019 09:15:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c78e:: with SMTP id x136ls1406747oif.5.gmail; Fri, 12
 Jul 2019 09:15:17 -0700 (PDT)
X-Received: by 2002:aca:be88:: with SMTP id o130mr6314409oif.122.1562948117393;
        Fri, 12 Jul 2019 09:15:17 -0700 (PDT)
Received: by 2002:aca:d507:0:0:0:0:0 with SMTP id m7msoig;
        Thu, 11 Jul 2019 00:43:00 -0700 (PDT)
X-Received: by 2002:a17:90a:2247:: with SMTP id c65mr3145460pje.24.1562830980022;
        Thu, 11 Jul 2019 00:43:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562830980; cv=none;
        d=google.com; s=arc-20160816;
        b=R/FfTR0iO4LHZVQ0gEd11oIe3A7kcRFoMw8LlmMjnscLJ7hr0qZMU2x/F/SLb99sGA
         K/wZyNXZB7SlQu7/0ctZqHrOumCjFI3Co5llzSZyEETKpmyHp36tYynnvA6aP9SZN86V
         Z5sqQt8ZaLTEr+LcpeH3YgrZWdfViLUWV5cl4WLJj2VTOgdSAgyWokn9K84Dkfd3AW9Y
         ovaD4G/VXqbTwMQNDFdiCM1eWHEvLOkZpA+ZGp6iCjrbXk6vD/MB5OPVomfzLkHCNCWx
         Q8LK5x9R9BnGY+NPKDml2c5Y+XNHotgPK6R+6fZz4IE3lPA6g56Afasp+YYEzDNALFSh
         5zJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:cc:to:from:mime-version:references:in-reply-to:message-id
         :date;
        bh=ugzOoESJsAMPxX3Lvy95NwJ+T7EK5PMgng3Xfzjf7kM=;
        b=QsPKzgJjuBdnupg5E6D0zmMNJSrSMkHd9MB1ZbcIfNzv7m26TFUcgjd1E+1I31NxGh
         gOtA5rW6ygw8KUPVyDrgNPSSdrdWDQKvSPbK+LSHF9Kjwmh6ADYbmtmZUWRXKe7fdl+x
         dftY1YHFWA/yRXaUKoU8r6GRvFjFvgzVGVTdCZpKhPVPV3XXlTq68NeHkcBYxmNbXHhb
         BkKYXd+fe/j0fZZKP9rAv9ol0T26I1tvj/3ZihQQU8HNDX6YsKM/Bnj7yuRidztcBOOY
         05sqLqQiX3C3AKseMzWXNCjznu9uBgI/7HgfODocWVbfeoCwmHWJaj2bQMrB/JcZTS0x
         UWng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn. [63.217.80.70])
        by gmr-mx.google.com with ESMTPS id y13si159120pfl.3.2019.07.11.00.42.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jul 2019 00:43:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as permitted sender) client-ip=63.217.80.70;
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
	by Forcepoint Email with ESMTPS id 5DF927ED8487C30DC2D8;
	Thu, 11 Jul 2019 15:42:58 +0800 (CST)
Received: from kjyxapp05.zte.com.cn ([10.30.12.204])
	by mse-fl2.zte.com.cn with SMTP id x6B7gKXN095127;
	Thu, 11 Jul 2019 15:42:20 +0800 (GMT-8)
	(envelope-from yang.bin18@zte.com.cn)
Received: from mapi (kjyxapp03[null])
	by mapi (Zmail) with MAPI id mid14;
	Thu, 11 Jul 2019 15:42:20 +0800 (CST)
Date: Thu, 11 Jul 2019 15:42:20 +0800 (CST)
X-Zmail-TransId: 2b055d26e85cb7bc2ec4
X-Mailer: Zmail v1.0
Message-ID: <201907111542202002207@zte.com.cn>
In-Reply-To: <1562784731.3213.98.camel@linux.ibm.com>
References: 1562743809-31133-1-git-send-email-yang.bin18@zte.com.cn,1562784731.3213.98.camel@linux.ibm.com
Mime-Version: 1.0
From: <yang.bin18@zte.com.cn>
To: <jejb@linux.ibm.com>, <LDuncan@suse.com>
Cc: <open-iscsi@googlegroups.com>, <martin.petersen@oracle.com>,
        <cleech@redhat.com>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <wang.liang82@zte.com.cn>,
        <wang.yi59@zte.com.cn>, <xue.zhihong@zte.com.cn>
Subject: =?UTF-8?B?UmU6W1BBVENIXSBDaGVjayBzayBiZWZvcmUgc2VuZHBhZ2U=?=
Content-Type: multipart/mixed;
	boundary="=====_001_next====="
X-MAIL: mse-fl2.zte.com.cn x6B7gKXN095127
X-Original-Sender: yang.bin18@zte.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.bin18@zte.com.cn designates 63.217.80.70 as
 permitted sender) smtp.mailfrom=yang.bin18@zte.com.cn
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



--=====_001_next=====
Content-Type: multipart/alternative;
	boundary="=====_003_next====="


--=====_003_next=====
Content-Type: text/plain; charset="UTF-8"

> On Wed, 2019-07-10 at 17:47 +0000, Lee Duncan wrote:
> > On 7/10/19 12:30 AM, Yang Bin wrote:
> > 
> > > From: " Yang Bin "<yang.bin18@zte.com.cn>
> > > 
> > > Before xmit,iscsi may disconnect just now.
> > > So must check connection sock NULL or not,or kernel will crash for
> > > accessing NULL pointer.
> > > 
> > > Signed-off-by: Yang Bin <yang.bin18@zte.com.cn>
> > > ---
> > >  drivers/scsi/iscsi_tcp.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> > > index 7bedbe8..a59c49f 100644
> > > --- a/drivers/scsi/iscsi_tcp.c
> > > +++ b/drivers/scsi/iscsi_tcp.c
> > > @@ -264,6 +264,9 @@ static int iscsi_sw_tcp_xmit_segment(struct
> > > iscsi_tcp_conn *tcp_conn,
> > >      unsigned int copied = 0;
> > >      int r = 0;
> > >  
> > > +    if (!sk)
> > > +        return -ENOTCONN;
> > > +
> > >      while (!iscsi_tcp_segment_done(tcp_conn, segment, 0, r)) {
> > >          struct scatterlist *sg;
> > >          unsigned int offset, copy;
> > > 
> > 
> > If the socket can be closed right before iscsi_sw_tcp_xmit_segment()
> > is called, can it be called in the middle of sending segments? (In
> > which case the check would have to be in the while loop.)

> I think the important point is: is this an actual observed bug or just
> a theoretical problem?

> The reason for asking is this call is controlled directly by the
> ISCSI_UEVENT_DESTROY_CONN event sent by the iscsi daemon.  Obviously if
> the daemon goes haywire and doesn't shut down the connection before
> sending the destroy event, we may get the crash, but I would be
> inclined to say fix the daemon.

> James
We have repproduced this bug several times .
It`s a good idea that sending ISCSI_UEVENT_STOP_CONN event  first.
But there is another choice , adding "iscsi_suspend_tx" int the front of "destroy" ,
for not increasing dependence between kernel and daemon.

 Yangbin

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/201907111542202002207%40zte.com.cn.
For more options, visit https://groups.google.com/d/optout.

--=====_003_next=====--

--=====_001_next=====--


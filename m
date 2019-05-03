Return-Path: <open-iscsi+bncBCHZVHVFVMARBNPMV7TAKGQEOYIOE2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C7812978
	for <lists+open-iscsi@lfdr.de>; Fri,  3 May 2019 10:05:09 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id q1sf714075lfd.7
        for <lists+open-iscsi@lfdr.de>; Fri, 03 May 2019 01:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556870709; cv=pass;
        d=google.com; s=arc-20160816;
        b=h98fvgHWxRyb8chWB05gU2cIABRc44v1B6xnj3V5oFjOXU87+GmGCEkfGAW0qtgDm0
         oTGQXsAJmcjFDTnFbfRxiqRhv8tLgB2BEs1z9tnF1dfORcldoWzXKUmU+Xu7RCFw7VBG
         yYgn/kUQgmvdIxrb4nN5JNUqBGwZWER8rA3LeookmlB0uyYQRdYap0CQQgc8kKPAT+98
         q+3Tuk8zw48M6nDK8ywF39SbD0h32ObKWz6aY7kdVTxptDlZPULIjtIqNs2gahx+gQPt
         zYZJrUDTLZupaD8TJJla762sAUjV8D57uvw45UlxMZD3R391msKa9BPxJcQ+gHpXqQzt
         gwAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=wjxc0nj3gNeEdqpnfU18KWH2zl7MkpH1GMaCNLqicWI=;
        b=Y2qWy2MHRWk1mipmKx6pSVVtToXGHEZMFZRFlsl8zyzp/uYeE5HKiFTbAjdv0/Bzd1
         9QHHEMP0jj8/wR6BGvYpn3NiLGzAOOz4ClOdldNawoI+a/QIAoWZaqLX0Jjr/bRiDwD5
         lScO4oTQ+i3c/yJ+n867nS1vNkFl3N/MwbGhTuvls0wrVzL46LSl0zsjwcc8F2fsMfZt
         Gs5xkxAJ4kY7uH9rtI1b12vaCPIbkHivJY+lBYRmH5YthlXAezO9psgyp4muB0TcGCn8
         g/1GkZ+EN7wLMqir3qMKEITubEvWqrwDxy9Is7zveORLrAk/muZZlbR+gTBxsE/rN5Ha
         shEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjxc0nj3gNeEdqpnfU18KWH2zl7MkpH1GMaCNLqicWI=;
        b=GhJksPjhLfE+1tuvsm7p/mbAC1o9HaFV1rm6O5WRyUOUyuK9e0631Ofe059KmB97Qf
         MbIX4VcXDZiULl9BFdnIPaQiac8dWlu0nK9dPhRvZKlMgO3IGWMz+JXreeyTO8WXrxnl
         L5m7JE5COssEXCoZ7U2c8KC9GqMzF660JzOCb1VtLMmJXYqXx4lm3QQKz/zWfn0H35Ja
         8RvmOzvz9GdlPQcOKa8QceTSjY9ACKiX90UZU4H0cXhE7EcOIimzbng4jT4/Q/7R5zwQ
         X/z7zKmvTPr8h6TkK4//US9EDbACqAoL8w2a4LYjeSqC8kfL5myYSn0prsLzpSWalNc8
         CrWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjxc0nj3gNeEdqpnfU18KWH2zl7MkpH1GMaCNLqicWI=;
        b=uHYOLI12nVaMVqMNbmAkoz78fvWpAthg0uOz5vjLnzctE+jjRcsv1kkfV+4Zc5rV55
         E0xH8vs7wM4R6nu+3vDGqW8OGvJlAWkyk7ZsbFHpta0DiR5AGapfuQ0FH+FGUwXbpHVt
         cinRUElkcN/IA3g8BhjahvnCmhv1EueqcLJnxVRiRMnPm2G6XJFceH0IRjAO2FqDUNQF
         U7PAD6LOaBltT1sid+sQOYY9J/0mfO9sqJPtXK6f6Jyms51dSOVuu8FTsbcbx9jizC5a
         RkUNJ8vnMFx78fFcNVmeAdcKvVTcyXkqyX2e2wa6xjMbILnHhavfvt6NJvcxpNFVDERe
         VyWw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXwp5LQVkiQS7X07srAjBdCpLWRi6gFa21vKJ5dOdxHW+lMRzad
	fF4w7EdFtgbPp9dmR97Ox2s=
X-Google-Smtp-Source: APXvYqy7uE9TSLenIm+pw7Zh89Zp36N3beemNGVZPLcvX6DY6YDJWfxSQnz5SeJVdrMYMVTx0n2H2A==
X-Received: by 2002:ac2:494f:: with SMTP id o15mr4243706lfi.22.1556870709401;
        Fri, 03 May 2019 01:05:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:50c2:: with SMTP id h2ls417426lfm.1.gmail; Fri, 03 May
 2019 01:05:08 -0700 (PDT)
X-Received: by 2002:a19:20c8:: with SMTP id g191mr4573858lfg.122.1556870708745;
        Fri, 03 May 2019 01:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556870708; cv=none;
        d=google.com; s=arc-20160816;
        b=tqoTfeLrXA3fH1qx3Je2vzXNzoS2yzTIcJuzmKqTkNyoPf7JwX0fqtCW/n3LpWam0Y
         TNliLnoVoqWp/EvSwvLBI3V7jIpKdXYZmtOoXzpp8s7883FY0BU/gYe6lbaoZ8Bg9tT5
         jdpreUoBA95lKsk46y2wS8qEpaw657TH761Qp2bg+mIPJX3eBVDr74RIMQUGn7mIz5wS
         QPf5nqbar3w1PAJuGzfFrmRCWQIXuCjki7FeLuR1Krgaeh89WMCdeZ1W+NBS4CSn8DtW
         qQhPe0PKRP8PJekeGo0Z7mnkzL+6tcA8dzpAwxs9XXtRULahzjj5RNa5eR/ZKjsrqi24
         NM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sKgTqWqq88r+gHomhphRFtnToVBljoQtc2pZKmQm3zE=;
        b=mVeMfLIdQQtR9vI23v06DOW/8XlY8mdMLn/IE0Zvi9LeuFazMP+N3D58xv/89/Hyyn
         nY/2wzzY66VZcsACKpWPbsdzcvc3WLeBCrlOlh3NoDjPYgRm2KJtYuqm1JeGs49ulgN6
         EEtqvVq2YkyDQMaJbk/D3tR1CtBTMSR0HopugJx5zFoueUNy9BadK9Jsqh909qCsRaZ9
         aeSP9RT9kjpBqJW+/vRNuw+/a2yoJW9s2VF85cepOTvNUYGqUeFMwARW6ABJRMDHouvV
         MFFNOVj60DA31/LNo6owl/dN5rI+aveK80l+ibmbBXJF2kWRK60mPDqSn8KKTzvt8bOl
         eGnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i124si27777lfi.3.2019.05.03.01.05.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 May 2019 01:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id E3EC0AD89;
	Fri,  3 May 2019 08:05:06 +0000 (UTC)
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
To: Willem Riede <osst@riede.org>
Cc: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Doug Gilbert <dgilbert@interlog.com>, Jens Axboe <axboe@kernel.dk>,
 =?UTF-8?Q?Kai_M=c3=a4kisara?= <Kai.Makisara@kolumbus.fi>,
 linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
 osst-users@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Chriosstoph Hellwig <hch@losst.de>
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-25-hch@lst.de>
 <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de> <20190502125312.GA2560@lst.de>
 <10a8c8f5-879c-685f-f43c-d5af678b2187@suse.de>
 <CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw@mail.gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <c9a58611-13e2-8e13-b573-b504032c017c@suse.de>
Date: Fri, 3 May 2019 10:05:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw@mail.gmail.com>
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

On 5/2/19 9:55 PM, Willem Riede wrote:
> On Thu, May 2, 2019 at 7:19 AM Hannes Reinecke <hare@suse.de=20
> <mailto:hare@suse.de>> wrote:
>=20
>     On 5/2/19 2:53 PM, Christoph Hellwig wrote:
>      > On Thu, May 02, 2019 at 08:06:38AM +0200, Hannes Reinecke wrote:
>      >> On 5/1/19 6:14 PM, Christoph Hellwig wrote:
>      >>> osst.c is the only osst file missing licensing information.=C2=
=A0 Add a
>      >>> GPLv2 tag for the default kernel license.
>      >>>
>      >>> Signed-off-by: Chriosstoph Hellwig <hch@losst.de
>     <mailto:hch@losst.de>>
>      >
>      > FYI, my s/st/osst/ on the commit message message up my signoff, th=
is
>      > should be:
>      >
>      > Signed-off-by: Christoph Hellwig <hch@lst.de <mailto:hch@lst.de>>
>      >
>     Maybe it's time to kill osst.c for good ...
>=20
>=20
> Yes. I've been thinking about doing just that. The devices it supports=20
> are now thoroughly obsolete. The manufacturer has gone out of business.=
=20
> All my test drives have broken down over time, so I can't even test any=
=20
> changes any more.
>=20
Just when I thought to reach out to you :-)

Thing is, we've done numerous changes to the 'st' driver in the course=20
of the years, most of which seem to have avoided osst :-(

So what's your suggestion here?
Just drop it completely?
Or can we somehow fold the OnStream-specific things back into st.c?

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

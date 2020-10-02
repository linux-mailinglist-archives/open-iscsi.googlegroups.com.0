Return-Path: <open-iscsi+bncBDLPRE656MLBBJWK3P5QKGQEX642GHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4A6280EF3
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:30:31 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id f2sf281802wml.6
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:30:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627431; cv=pass;
        d=google.com; s=arc-20160816;
        b=0AcENiqoFtMZY+5uZamyJOCxiZVKhMiIVeY7Ixe4Yf9MLwAi6uQW/m/bb9Vkk8m3yw
         BTdWyEgYkT3motNG62SsEn/X28eCicrw83sI9jtnSAT8KRePVHcithz1yM55e/AL5exx
         vcRmZ0I0crQxbRGWT4RaALkVPqsWpASTktIobptSHiVF0MBL+rwXyuB0EXHttH/lNK7g
         INd2g+AI7WAZHnPK1ddVaG8mVMMPkvZ4eAIDD6c5Xbe6l2mg3351aF5g/MpHuBJygUDa
         +o2sXQnr+uPbVTO0fO6jG3vbZJj7g1zOPb5xo4WPZe/e0ncVxA5gfQjafJltkobiD6o7
         qOYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=cRuk7GyrnXY0sHzHIW5loLPSQTT+UOyqJUxb0EnTRsk=;
        b=aDHecuOQWqkCdFXet9OYBeNr0AV41f5+s7+C8ggiUFoCPePt+p+d0BYTJg0hzrBe8O
         5WBhVcq2/n7vzn+AnPm/ENJoBG/BlSrB1t5pX2b1SOJgrYR7yU1RVr2WQgsWsfhBKhU3
         On6vNXKvds5o2X3K+DHs3YfPXV+RW9VXrw2p7AfrjPzeWA0hgDkcVrEw0COWf8Pekf8p
         ongs/Ae9dcmMOXi35xg2GnkKpcyiQn7b+nuCWUgtoDs4x2Bycx0gB+a8JZ176lmGL9i4
         KHOhUs7413pp4EsBCQCyKM7K0G5SYZxGIPGRddRwtA7jCjxIDSgu+C3GUMeh0IRVzfnN
         YJPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cRuk7GyrnXY0sHzHIW5loLPSQTT+UOyqJUxb0EnTRsk=;
        b=IVKOj05DMMakwJGlFhTOVf3W409S1V6lqAquEmFIe4teeStEcCM8lwUXcFxofE0q1U
         LQZqGmmMqcWkERy7s/vzYrmLQDx3Klvw8790qlm81M6BJ91MqpDGfUTYeUXv7EAgJPHY
         RNJi0J+l/okj7164bPbzcUequSV4GPw6PQDaYVLx8hgsEqUwnSYZZoJeW+XXak29mg8h
         0cgetpDRLlQCnTWyOF4yCWVunUhSj1rdAOCdAd3eD9QAEkg8H59lTvLJ7JIxdzY7mFR2
         qaw6klBFLmV4f6pveRqegb3jJHldmrjTzfRQeWOHwZ4S9YmPjynYXXeYtbG1zRQMYeoF
         5LBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cRuk7GyrnXY0sHzHIW5loLPSQTT+UOyqJUxb0EnTRsk=;
        b=TFw8Gd23XBMwz3C3TfDVn58ExJ0RBKbA8s4HFBwqRHetr/twCJxZxUhPmZfMF8m/p3
         VSEOPgwQf8GGtpnziculXyibjhDVV60GpgMF2dZRnt6EqzLRPo8CLSTwM16E6yzJrtjK
         IvS/wX4D0uWDoMNnrpN0itXRqXvJW0+WTxNmZSc91P7gJp+rFO77fEYGY1Y4pGfSxvV7
         77AZ4oDsd/RjUL2gJQoaa0my1GzoOaahLm0FwdnG8o3FVPLYMRS4QHaONZVe5yL5QihS
         Jbx0p4vxJ6eM5wjDy6Mn3RZKOL7H7I4SktRG+D1WY9R8s15z1wboMqF64IcrsnuHzGzt
         Q86w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5312g2CfiKh8LWRU2/I+6xgA5ekadW04ZYiFf+MpJmges5ov8PcW
	UPLANHQDbrpRPhR+P2qVMOI=
X-Google-Smtp-Source: ABdhPJwZOP5kHrSZEIkNNN5XvTH51fNZuc8OZ+LIjGR88El8xqo6KKabcDDEbV656HxvsF5Cs0C7zg==
X-Received: by 2002:a1c:2d86:: with SMTP id t128mr1604510wmt.189.1601627430980;
        Fri, 02 Oct 2020 01:30:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls1002397wrx.3.gmail; Fri, 02
 Oct 2020 01:30:30 -0700 (PDT)
X-Received: by 2002:adf:f80a:: with SMTP id s10mr1746877wrp.351.1601627430039;
        Fri, 02 Oct 2020 01:30:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627430; cv=none;
        d=google.com; s=arc-20160816;
        b=KrU/KHPnx+TfZq0j1tzqnB+uTiDsRvwehWZ4m0/EhsuGx4/J8z03dfzHnOvWTp4m9G
         WdxJyD2MXuf5vFMvxdDHD7I/FmXAPmN0pwms+vEKGbjNrskRx9oE96EcGyOStisWFhHb
         LYPwPexgvoDladYiEJTk2ny/+BqcqFa1lXGvkfumhLrpbr5+niEEHSu9OLexSNYjY9sf
         ng3VwBavshwLXq4hnP2LNW3/VaveknR3UxpMMwyfy5sxUPVD3AdegRagKxyDaInmPEQB
         lKiuAmhZb1voD6Ip/va9//P982bkr/WMtFfslwtMaj3P1K2uCy3GEgPmUpBU95kNfxK5
         vwlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=weuNWDTISOo47t6c4xkaSKVRdC0iDiBc0HvQui6f8EM=;
        b=lr+8vXqbltmN05uKe9FBePuaXAqZI4CzBFB4QeoPg5O8vfT8+PB97C1/9NzXzEGWVM
         ke+YqACE8+hO8Ff59JAkzL8kixfR0yKH+TZzM2+ZoAhIRxSWiqimJCGIyxjVFAjwh9Cq
         eLlvJ+lX6xPa9Ps2V71wdtvuh4CejnskADFCEBsA/hruzhLFmHcqcKFsARnotKm/rUdh
         xMm0NCFa2S33zWwV7k0+/0vcRU7NcaX476Db6ItaLWBsdh6OvuMEKpp5mw3BHMVvmvL7
         SKpcuaXK+m5eKEklsljEn4N06Y92Xbhrw2TfTPHEjoB7VQwS9dDUesEXzNpEF2jd+rQf
         OPCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z17si21856wrm.2.2020.10.02.01.30.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A4D13AF34;
	Fri,  2 Oct 2020 08:30:29 +0000 (UTC)
Subject: Re: [PATCH v9 0/7] Introduce sendpage_ok() to detect misused sendpage
 in network related drivers
To: David Miller <davem@davemloft.net>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, chaitanya.kulkarni@wdc.com, cleech@redhat.com,
 hch@lst.de, amwang@redhat.com, eric.dumazet@gmail.com, hare@suse.de,
 idryomov@gmail.com, jack@suse.com, jlayton@kernel.org, axboe@kernel.dk,
 lduncan@suse.com, michaelc@cs.wisc.edu, mskorzhinskiy@solarflare.com,
 philipp.reisner@linbit.com, sagi@grimberg.me, vvs@virtuozzo.com,
 vbabka@suse.com
References: <20201001075408.25508-1-colyli@suse.de>
 <20201001.124345.2303686561459641833.davem@davemloft.net>
 <20201001.124815.793423380665613978.davem@davemloft.net>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <3a46f056-8314-4467-4a11-40d11ddad99e@suse.de>
Date: Fri, 2 Oct 2020 16:30:12 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201001.124815.793423380665613978.davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/10/2 03:48, David Miller wrote:
> From: David Miller <davem@davemloft.net>
> Date: Thu, 01 Oct 2020 12:43:45 -0700 (PDT)
>=20
>> Series applied and queued up for -stable, thank you.
>=20
> Actually, this doesn't even build:
>=20
> In file included from ./arch/x86/include/asm/bug.h:93,
>                  from ./include/linux/bug.h:5,
>                  from ./include/linux/mmdebug.h:5,
>                  from ./include/linux/mm.h:9,
>                  from net/socket.c:55:
> net/socket.c: In function =E2=80=98kernel_sendpage=E2=80=99:
> ./include/asm-generic/bug.h:97:3: error: too few arguments to function =
=E2=80=98__warn_printk=E2=80=99
>    97 |   __warn_printk(arg);     \
>       |   ^~~~~~~~~~~~~
>=20
> Was this even build tested?
>=20

Hi David,

Obviously my fault and no excuse for leaking this uncompleted version to
you. I just re-post a v10 version which I make sure all patches are the
latest version.

Sorry for the inconvenience and thank you in advance for taking this set.

Coly Li

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/3a46f056-8314-4467-4a11-40d11ddad99e%40suse.de.

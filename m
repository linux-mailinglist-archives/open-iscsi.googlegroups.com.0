Return-Path: <open-iscsi+bncBCHZVHVFVMARBKXZ2OQQMGQEWKOR7FA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA44D6DD2B5
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 08:22:36 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id i30-20020ac25b5e000000b004eb074853cfsf2169118lfp.16
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 23:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681194156; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dl2z7DRSCL9fjetHpNbkSwyBLTwwH3aamEaNpxfYz+Rm7Dcox2NWKTldQyhIivAGKj
         77uCdYeo6M39o3I70K3Mg56wbsSyKo0PEF8CDpIm4BdExiBaATTqff4L3myTZApmGtFF
         fuWanlYyWWfmalRES53fZoM++LR5c3ZkGQJISA8/hdGzS6W0Vo8zVJrwzqr7Hzy65D+8
         VKfZ8ZcsVwe7/L7cvHLkoSZYIrDgz0hllIsULW/ovejhEp7T7TVVAGU9XJJIJB3/4/dO
         drb9MIY1xjisPV7ZKT9jPm1trIwoGReT+U9BBkpe7R44oFuvYU2U66NzzT9qGMshyRe9
         3szg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=Q9tH6w5Whu2GldXzxM2pp8QTzM4ZmHOQ/tEbd+rekMY=;
        b=BgId+66/yImzO+mEASFqwl5lgVAOxED41YGJ6Ekg/SUzAL/HAUZQibDijPhrYL40iL
         cyZhQd2v1bVBORgIIuRbraGHAHAWObZlratBUkCnQ3Ew1EER4gjXWc7ZJxT9+fKyEUqh
         vH8bI6igI83xRS4ceXLXaEVHoI2kj7Yzq+AFU9VlLF9Gqh4umFQAQnNWV2zP+FQGnvPJ
         sjJRQw88FnnC//sYWbInno4O/VPorv1V27jbEH5uvKtFzXUqk5EMDAOptmdfAaXJyW/u
         zltPkyR8XqZl/aRCyNRJlEdAgyvxU552GW2DutX6uXM1BSW8uOpZvVhhEo51ULnV/wHb
         o6lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="t9/CwEwd";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681194156;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Q9tH6w5Whu2GldXzxM2pp8QTzM4ZmHOQ/tEbd+rekMY=;
        b=pJn4gi/102w66Y2iPmSzApMJ6b2NqgUTqjexveRYeFHvDUUEOhGw+rgDmFEoLnNc8l
         59wZ2Pdi3dUWT5yvvp3OOY38r0EXIa5Isxp11AEv5o0q7f9Gn17lzL7gOm8Vn6OVep/y
         6JEeioGtmUILO1gRlh+LCNWwOpudfrdIUry0IQftUfCRS2WWE33eC8vGgH0pP+KqiuKa
         j7QOW4H4NAU77umoo1Md2sidW8yVJj8+d6iOYBx0Z2WEdzhSWuUU3jcbaoLlSQE3t87r
         jFlT/gx//+w7QlIO03eD3LrzFxhk8UWfamQNd9fgbQPr9cWEH21OYBCy2KGBvDxVnHIZ
         flgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681194156;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q9tH6w5Whu2GldXzxM2pp8QTzM4ZmHOQ/tEbd+rekMY=;
        b=WOdEvKyk7oWgtES6QGPzlfGkae3jt2qX25f8mv40u9RxqPOFLT94TrTZQX7reQ1hGQ
         zVdDY4nNkgUquarfR+Ach7vq2YVKdMEX6U5Ul4Wk4q9Y0GHkPTkQvwcemnbzq+MvgBot
         UKbB3tDTl/LIYbQVVx56zsiBL4ng0CkxX9ojq+t962hEMSq+sbqPigWUOdEF/vVTQgNo
         HWM2jDYbePu7IcDZp4ipm4RVQg5qvx/DjSGQMXD2PJ0hr4IA+gTwqRy6OitJOlmsmDzM
         Vy1wWZn5PmceU4jkvfQWFUQx4veBkeq++YgoPL73OIbs2ETDO/amfpPdrUByaFcTNlEU
         AkmQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9fcqDIQhQ7TS16X1bg6msowljRqyDaMrewtokLgtPcMhzNY6VfB
	Lvh5mOvjBMeI34ZB/z2Gy9M=
X-Google-Smtp-Source: AKy350bPSRN/MAEImlJTxkqj5D7+h7RkgneMQD1MCTnbt81DddFDnyaom4R0iuwoYjsx0kaQRFCoKw==
X-Received: by 2002:a2e:b166:0:b0:29b:d4e5:8fc4 with SMTP id a6-20020a2eb166000000b0029bd4e58fc4mr3726532ljm.1.1681194156055;
        Mon, 10 Apr 2023 23:22:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c0e:0:b0:2a6:20dc:a0e8 with SMTP id s14-20020a2e9c0e000000b002a620dca0e8ls5381614lji.0.-pod-prod-gmail;
 Mon, 10 Apr 2023 23:22:33 -0700 (PDT)
X-Received: by 2002:a2e:a40a:0:b0:2a7:6f60:34f2 with SMTP id p10-20020a2ea40a000000b002a76f6034f2mr420242ljn.33.1681194153366;
        Mon, 10 Apr 2023 23:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681194153; cv=none;
        d=google.com; s=arc-20160816;
        b=uM2fcjNBgr4FD6qEbqwqikFc4WV0fb/rhTPtI1pmbyd6gjwMWzucqdu78CQb8FGQdA
         96bTHd7geOuCsSLAuFTdNUljsGoY2yAZJ1W8STPrLsN28F26NbUweZ5Sc0r6yVB0ece5
         QSswmUXJuMKLsHr/pZTpKLS9KwcS0HxNq9Xa5ImyKv4ePBn8bSUA2r0P/ySn0/EtdXED
         OF089eG6JMGERTxEkmmjKMBflxkouvURm5+t3l55t0ZKb8VJQ6yfWjmrS6Y45QEPKPgV
         omOthEjvlIGp0RrA1Nqr3+BsTVu/o6aDJvelB7dR4LZiPEXnpmSwxr8/4qEixEeMFBvl
         Lstw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=+OjA+c0IfKROkLab2Lvjku2ojXGQXfcFSI21favAo5M=;
        b=q/uAbLnDcg5LQaQ/eZjolJvRWitlsvt5R4w4tGLbSgPdwQqlk3CqSYKuKZGHj08GTC
         mHvjgpL+Nu6bi+KolpZFVzeZMHrvkNH3LDmTCxW2atTA8D5ZljlZXQMb95fgA8TNzFZp
         S/oQrF1WT9o4YEdd+qnMplALLBSKelPjhSpFxjsJ/55jwz0k25wwgm2z1g4EbLUEZAlF
         3Na9IygY5o46IwfHuDV23e3nI14iHfxfqScqDYLWdjZpNpz5DaFgvhHwz0fzGLlTtefM
         cxfITHlyCN1twSN/sUfKW5ZawbSG6X/XLvqxsB1qFbKQrTDsA+br28AVVvtaSgforaUM
         Fr5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b="t9/CwEwd";
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id d18-20020a05651c089200b002a785f3a659si66818ljq.3.2023.04.10.23.22.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 23:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 999111FE01;
	Tue, 11 Apr 2023 06:22:32 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6FE8713519;
	Tue, 11 Apr 2023 06:22:32 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id b9o3Gqj8NGQPSgAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 11 Apr 2023 06:22:32 +0000
Message-ID: <f3c23291-2f77-4935-4e1c-a61cbe29241a@suse.de>
Date: Tue, 11 Apr 2023 08:22:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [RFC PATCH 4/9] iscsi: make all iSCSI netlink multicast namespace
 aware
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, Lee Duncan <leeman.duncan@gmail.com>,
 netdev@vger.kernel.org
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
 <20230410191033.1069293-1-cleech@redhat.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20230410191033.1069293-1-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b="t9/CwEwd";
       dkim=neutral (no key) header.i=@suse.de;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.29 as permitted sender)
 smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
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

On 4/10/23 21:10, Chris Leech wrote:
>> As discussed with Lee: you should tear down sessions related to this
>> namespace from the pernet ->exit callback, otherwise you end up with
>> session which can no longer been reached as the netlink socket is
>> gone.
>=20
> These two follow on changes handle removing active sesions when the
> namespace exits. Tested with iscsi_tcp and seems to be working for me.
>=20
> Chris Leech (2):
>    iscsi: make session and connection lists per-net
>    iscsi: force destroy sesions when a network namespace exits
>=20
>   drivers/scsi/scsi_transport_iscsi.c | 122 ++++++++++++++++++----------
>   1 file changed, 79 insertions(+), 43 deletions(-)
>=20
Thanks a lot!
That's precisely what I had been looking for.

But you really shouldn't have mentioned iSCSI offloads; that was too=20
large an opening to _not_ comment on :-)

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                Kernel Storage Architect
hare@suse.de                              +49 911 74053 688
SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew
Myers, Andrew McDonald, Martje Boudien Moerman

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/f3c23291-2f77-4935-4e1c-a61cbe29241a%40suse.de.

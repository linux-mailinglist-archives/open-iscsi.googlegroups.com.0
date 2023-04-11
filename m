Return-Path: <open-iscsi+bncBCHZVHVFVMARBAPX2OQQMGQEN7BMV7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2106DD296
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 08:17:40 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id a6-20020a05651c030600b002a4c905cd3dsf977104ljp.22
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 23:17:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681193859; cv=pass;
        d=google.com; s=arc-20160816;
        b=XWv1dRbRLpHaM3H/J6+WeK+o6YFX6HZsFHtq1xasil+YSw46D+9drvP68pEcce4nGp
         HQc4nH2pzNL0xCzCeBJyeAqZk24U0EGVI7CIKrem9WzOBiaIYEGl1D+3/TkGwTpWhGR4
         t5cS8LR8cuxDrYc2QpZWzuv4u361pCoyrR6L/KVnj16Qgjiqdg1BRIQjywSBn/uj0efU
         bwf1x3ZpInaXUJHdV1xa6J3zZLNiXLUSt6p5f5+tIzOVOQJsVNJWbQJ9J/XcJ3ELQw4Z
         d/qzujvRSEt053P4a7mznXiq6IeDtCpNaCKTnNKhZWn8Nz8R7BbPsVF6J95dvk2TFxi3
         l7qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=wJgpxzUicsSHrHQtSWabSfDBGqpKn1PkFxubEIldFXE=;
        b=Yg8MWxN8zL29ZwNbxwmFc6VNF9lPdv4VHWanvDxwQ0QeOhbDPpUFL3RePGniLsJIaw
         V8hLAZX1rS4ZVFvc4C0FxOie8YrpxzDlFrhCOGnbdsuSMZNiQIgh/vnfYEbAD1ibx/tP
         hk75d3nh7PiQ+wnduvaMQuzc+yr5/a1jXKZ42x2By0kRmGAmjjo1voK0wWz5QIKa+xLv
         74puop87HiHM51FLUVJhyzEP8EjhiiWIO8H+zOjsjAlnsy+X73dAp3JoyshNq+hGvTRO
         nQIpy7XBGAH3Ri0HllMnLYxRidNIk3Q82CoWYuEksmrlzonDKd9+ulydib4nTMJ0i8W2
         CX7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=w2Nd77bV;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681193859;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wJgpxzUicsSHrHQtSWabSfDBGqpKn1PkFxubEIldFXE=;
        b=acYq529poGOTsXN4WEEtEWodHXPhDntxbuBcdvbp7qJ2stFojVcxw64oLBUpUTpGF9
         6VJhm2w28/VkBG9DIWZ3NWi83Z0YySE7YIopMeGZKaxftUk5ZWeTRbSUehRY/tzpiKYf
         mZbk4iOyiCjmzQskFqxGhbA1GZ/u/NMA6kUgw4HOQCfbG1TM+WZ9S4XTkQQV/dahRlVH
         qkBywQHH022w5wsrI330rSsqchO8EVWG/iEBmKkTSRmU0oDTYZSbJZBRfWknv4ljiH/p
         iwj9ok2+cKEy78Wi9fl+77yCELFZNC+e1YipEaAKOLtK3NCuVlpKiwlIzqHZY6xvY0Zv
         agag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681193859;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJgpxzUicsSHrHQtSWabSfDBGqpKn1PkFxubEIldFXE=;
        b=uHRvueF3ZSTbhB4SKnD7WPPW9zkQSkzRCImrhm0zu9X5wxjzjZK3brxdYR23LFMxid
         PNUsUeVw5htjGB9+HpHYqQZWonW7RUs74hlyA1nO0C86+mdt0Oce7L8pJ0Hzj/4038a0
         uu2jBC1FcHHpDS9qp/0sGYsIdeH3yf2z9kDlbRn6WVD4cyeA2XE2vo5kJauSjJEi7KtD
         2prKR0OazzNE+54XnfQrFnJYfKh/bD7ss1waP27IGNjcHJ8EtcYtssD/z1FBzd9vVDmx
         qjgVG7tpFOxEg28iu3pl+MqJOiPjsfF1QnPT/9aQSrZ6HIb8r1bEJwD/3ePEfskgw7Zq
         B7jQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9cdq+J7BSPtaLpKF5sR8TwmFlgah6Pnyhp6aoTNJ7fCNTrBm43T
	lcGBmkWeWCmi02iAUCk9ELI=
X-Google-Smtp-Source: AKy350apeBsisixiM3EH0TqFP54f9bFLZ0+dZGMSZc1KkGtC9MwWArOc37ciRolBGoVKJW+MnRM0OQ==
X-Received: by 2002:ac2:550e:0:b0:4d5:ca32:6aec with SMTP id j14-20020ac2550e000000b004d5ca326aecmr2664284lfk.12.1681193859316;
        Mon, 10 Apr 2023 23:17:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:b11:b0:4e8:c8b4:347a with SMTP id
 w17-20020a0565120b1100b004e8c8b4347als736372lfu.1.-pod-prod-gmail; Mon, 10
 Apr 2023 23:17:36 -0700 (PDT)
X-Received: by 2002:a05:6512:21cc:b0:4ec:8e83:dafd with SMTP id d12-20020a05651221cc00b004ec8e83dafdmr817243lft.19.1681193856202;
        Mon, 10 Apr 2023 23:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681193856; cv=none;
        d=google.com; s=arc-20160816;
        b=y1U6aoCQt1vUuFhZNqSypNS9cNaKaQg+xKqPseRyUH8HAFGztPafaIWcuFfWCAaZ3B
         CEh31BmC+ygEMKHjQmMXu2WeS8JnJElgqRhx3assiqedXOLfPvVGiqgr3fYxe5QVE+7s
         tjH8K7otjC9ykrikTOI07Cbw0jps1d5goyfbmBybj6GpZ/m7fTOvL9wsQyuMWzOTKefU
         3fO9/EDObJfWPPd+LcxxXQe0TylmzcS9WiojiQK3hQvrv52T0S0eTL3rOXp+AglXfFtQ
         X4nbbwkoifqMg7akQPgZBmC29nAbx4jVPkq8RuNbXLVifak2Yxcxji055qblemFNrIyb
         BS6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=UBkn98/x5NQjXTPRFEc0jqYcLmbLmMu9oG4I0PfZFnk=;
        b=TNxEEMgsKaYxlvDUxDPlPOoYcioGBt9pk946eWoabNIpFa+vPsMq7eDQHF1Cfc18VM
         BLInYyG521nhA/kHSxkDCnu5Tl8Np1cIdqJxumH4MeLG9i+PVvRegfC7vy6kfvTTzVjn
         knjKbEm6zMK8QM4v2NJaXdCcRIbUuAwasXP96TcPLoFMMZRi51AkwFVPFryJFWybLVuk
         Wy/NPArG1MIbas8tvAj+3Qa2IrbsI86hpvnRonCT75zC3n6o10NTYqDEtRfyjVxN0i/B
         zyNk9vbmMPp3r4mMOMPJSZL+2ckHs32U7eFRKfUHgOLfFuR5PVUdtXqePNHwYf6svwel
         xzQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=w2Nd77bV;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [2001:67c:2178:6::1c])
        by gmr-mx.google.com with ESMTPS id k12-20020ac24f0c000000b004dbafe55d43si682109lfr.13.2023.04.10.23.17.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 23:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1c as permitted sender) client-ip=2001:67c:2178:6::1c;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 77949219F2;
	Tue, 11 Apr 2023 06:17:35 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4EB6C13519;
	Tue, 11 Apr 2023 06:17:35 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id pEYKEn/7NGRwSAAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 11 Apr 2023 06:17:35 +0000
Message-ID: <0288a1cb-d2a0-6493-eae0-1d1b1fe9209c@suse.de>
Date: Tue, 11 Apr 2023 08:17:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 10/11] iscsi: make session and connection lists per-net
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, Lee Duncan <leeman.duncan@gmail.com>,
 netdev@vger.kernel.org
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
 <20230410191033.1069293-2-cleech@redhat.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <20230410191033.1069293-2-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=w2Nd77bV;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 hare@suse.de designates 2001:67c:2178:6::1c as permitted sender)
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
> Eliminate the comparisions on list lookups, and it will make it easier
> to shut down session on net namespace exit in the next patch.
>=20
> Signed-off-by: Chris Leech <cleech@redhat.com>
> ---
>   drivers/scsi/scsi_transport_iscsi.c | 104 ++++++++++++++++------------
>   1 file changed, 61 insertions(+), 43 deletions(-)
>=20
Reviewed-by: Hannes Reinecke <hare@suse.de>

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
open-iscsi/0288a1cb-d2a0-6493-eae0-1d1b1fe9209c%40suse.de.

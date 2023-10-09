Return-Path: <open-iscsi+bncBCN4FJF4WYLRBAOTR2UQMGQEP63T57Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 989407BD42C
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Oct 2023 09:19:32 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id e9e14a558f8ab-35187cd8543sf30911885ab.3
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Oct 2023 00:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696835971; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9N8CJZS6D++/P46yB7PgQSWO/AOhbfVqLyfiBGa2kHlPqhN6/Gunu6nngvCdgp/Kn
         ldNY5QaLvmTsZ9UVvtH8nzsepAGuCGm2xifOPVirt/iqVeor1jVanjH+xNVULNokW5qn
         5Lz9XJOtKnC3jpnNg4UndvLnaZgh1fpegyM8m4F390Prh0p5N+cTX/AH6jqiApsFvYQ4
         y4qv9k49VgowgnLDkDRxXccB5jE7clo6WgovPOMvAUSQS3y4R1Z0Ml1GQHoqGkYr0nct
         LVfXPxG01e6M/hp7LjtIC3b3qBgxntAVyjAO5k/ZrUSFZoY3i98rDKx8toPN/fS7Eyu+
         Q9AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=MUVmVAQoqww5dCGhoKKuNhGXY0dN3muDo4bFCI3o5Dc=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=FTVTkdlBg6E/Tb99xTZxP/Z5B4bkTyclAq1r2pr76uGgYP14+3WbhVLUcPScTXM2EG
         jgnbvud2/oMx5nxiqgo1DZIx7TLIy4vB56b4jApHOYc9KkpPnW50hivBqgIsMpLiMGx8
         5fOKTmiB56VQwrTwI2ZMiTU/ZmGrcBHfkd2T8Hk2gMkieqgrZHJdFmZNkN1tF1cvKRGu
         BCXBU7dtX9NcaQf32UZlJs/zNtr4s7ccnNgVL6+rMC7MCDEYvNTPBclyCcU3c77FEY/T
         Rcww5bp5mpFtcekvKilQSw64IsM3/gCy5tP7PSTdh4CsrB21dXd6eBViwgbvuMDrEp+B
         PjXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696835971; x=1697440771; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUVmVAQoqww5dCGhoKKuNhGXY0dN3muDo4bFCI3o5Dc=;
        b=irE97RyzZ0i/lwAFp0TFcc5I7jszTffU10dHY8aw9kVfb866s6zaD8jIdK8MBu/GS1
         /svdp9k/Olm0KvdThbzOsK0kL18Qwwg8EuuAD9h81g3SaoBkZw7PyV4wElNNA8TheGaB
         9WVBrdSdkMbKLLCfUi7IkKiUSnsuzDs8qhHE7fuJJoxpfy+cjkAusmukWB9cg0q39sFS
         IrNai4+Opxg9xfkRqfP8V2Djkt6rFe2FZZKKZHbaDH+g3c/l23gxYxk7PIxJf7gCle42
         PMQkE7rE0ZAjQqB8uQiofkEWFG+re1tuxqqcBLdxvWthFO030UamJlSHwfrcMGOxJnX7
         7Qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696835971; x=1697440771;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUVmVAQoqww5dCGhoKKuNhGXY0dN3muDo4bFCI3o5Dc=;
        b=TX9q1T1jheuQOZco0+6Td1J0XjEUcAOyPsQ2S+e9hY7HqGboV7LD8H+NSo1gwaCDwi
         HiIkxGue3vkEZCC3Qj2lQn+BszvDr3IsKTPw21+LsrBkxQOpuXm9d6/5N/8JzYjBeJ2O
         8OK0dBbzJDjaQfAcfaOrXbgpRVbxNjpBODbTKeT28VrIS1nGjafVtzgQF6/sXedHnagr
         OpaOchgGaObhilJ6rckLlrIXmkQTo6N5K74ry/ft8vcFGvUjB4CwHoBTraZCy0BCwQkD
         UzsJAnMdH9jKFit+66cHdQI58Pnepl7SVjzwP0IR5p/rWOolqVYesuAEfPRRLQEKHLXt
         sF+Q==
X-Gm-Message-State: AOJu0YwAxx/5s4XLO2i0MOI3fQQAOU8LWqwQrGj7Df9WQac1l3n40luN
	7aG97uf8fQoqfd+n4umYIg8=
X-Google-Smtp-Source: AGHT+IHqFWYVzBPrNR1sjcmUSF8nge2cthAo1MwaB1nxeJgacI099vhWxl21WKqT8WsxuFBMe2Emrw==
X-Received: by 2002:a05:6e02:930:b0:349:851b:3e48 with SMTP id o16-20020a056e02093000b00349851b3e48mr13652935ilt.28.1696835971207;
        Mon, 09 Oct 2023 00:19:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:5214:0:b0:34f:be2e:4505 with SMTP id g20-20020a925214000000b0034fbe2e4505ls1904367ilb.0.-pod-prod-05-us;
 Mon, 09 Oct 2023 00:19:29 -0700 (PDT)
X-Received: by 2002:a05:6e02:20ee:b0:349:2d48:66ac with SMTP id q14-20020a056e0220ee00b003492d4866acmr19963026ilv.12.1696835969225;
        Mon, 09 Oct 2023 00:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696835969; cv=none;
        d=google.com; s=arc-20160816;
        b=lDvFmqhlpCtupeQKnGFH/7GRoOTZ2ljXLtyWMI1KUW153mau6o98sG+iX5uUtOvFQe
         1s4F4wSRyBfywVVyOwI05tW9SrRzP2W4Er8+V6oBxmOJxbNm+IU1iEYSW6juUCv0Wd7v
         6y1kUASqqe+afyWGNzRPxy4E+JYBwHJwfLDRLHrd1/qnVhr5Lx1mm5IgQN++YGm/206E
         UuXcwo1I12Gtbg3izYXyAWmFyrNwYw+8nyE/VY2tT8nrsqpgrOlDJhgeiZmtTwi8T1nh
         GMSVEgLN+76SS48KtQAGkp/SehOjQtN/JqyJumPYWxf/XwTJB/ICqNLG77w1RJ3wVFNq
         A9BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=C7WfAgZeDIXluOz3FfOlW2kYhQHIOx8d+Xqhzi8E378=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=XU0IV9h1A1E7l6xU+4SNANVGTUW6u0+9rasyzTe/3DyTGJWLlaBRg/dWZ/UTCSLz1A
         aooh5rXH/vPMwkr6fQ4eH0seM5tCM7Fuh06ZRnwM098KqZJW7bz/e6j5RWPJ+5HFNDjS
         kCtM2DyztJ4Yx4MOYnViEdqtpFYHJkqGK0smmYKn3UBkgqv5rn2hrfk8uSL2ClkUSUKB
         Wu0QNx+hwCHbFY6CXp9rOv7WJd68gfItr+FncY2gzHG8TIAw4rcA78NEQ0MWqY51o6tk
         e8/XtzpYejiBxl0ZcNZkKP563F6hDiQbdDt+vT71BYzSLLouK5lSi+T3FjRVh9aTUbbU
         P3qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id cx17-20020a056638491100b004312fb02a61si532007jab.4.2023.10.09.00.19.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2023 00:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4S3r1z3WFVz1M9Gb;
	Mon,  9 Oct 2023 15:16:55 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Mon, 9 Oct 2023 15:19:25 +0800
Message-ID: <89365bd3-b4b0-de2d-f863-afbaad118649@huawei.com>
Date: Mon, 9 Oct 2023 15:19:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 10/10] scsi: scsi_debug: Add param to control sdev's
 allow_restart
Content-Language: en-US
To: <dgilbert@interlog.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-11-haowenchao2@huawei.com>
 <d61e88d3-e1b7-44e0-ba9b-f633be0b5b30@interlog.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <d61e88d3-e1b7-44e0-ba9b-f633be0b5b30@interlog.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

On 2023/10/9 7:17, Douglas Gilbert wrote:
> On 2023-09-22 05:29, Wenchao Hao wrote:
>> Add new module param "allow_restart" to control if setup
>> scsi_device's allow_restart flag. This is used to test scsi
>> command finished with sense_key 0x6, asc 0x4 and ascq 0x2
>>
>> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
>=20
> Hi,
> Looked at this and verified that the allow_restart flag of scsi_debug
> devices (disks ?) is usually 0 and when the scsi_debug module is
> started with allow_restart=3D1 then the allow_restart flag does indeed
> change to 1. For example:
>  =C2=A0=C2=A0 # cat /sys/class/scsi_disk/1\:0\:0\:0/allow_restart
>  =C2=A0=C2=A0 1
>=20
> That ASC/ASCQ code means: "Logical unit not ready, initializing command
> required" according to my library. Played around with sg_start but didn't
> see any change in how it reacts. According to scsi_device.h that flag's
> description is: "issue START_UNIT in error handler" which implies it
> changes how the EH handler reacts.
>=20
> Perhaps the 3 line patch description could say a little more about how
> to use this new parameter...

Sorry I did not write in detail. As you mentioned above, this is to
determine if to trigger error. I would update the commit message to
following lines:

Add new module param "allow_restart" to control if setup scsi_device's
allow_restart flag, this flag determines if trigger EH after command
finished with sense_key 0x6, asc 0x4 and ascq 0x2, EH would be triggered
if allow_restart=3D1 in this condition.

The new param can be used with error inject added in patch6 to test how
commands finished with sense_key 0x6, asc 0x4 and ascq 0x2 are handled.

>=20
> Tested-by: Douglas Gilbert <dgilbert@interlog.com>
>=20
> <snip>
>=20
>=20
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/89365bd3-b4b0-de2d-f863-afbaad118649%40huawei.com.

Return-Path: <open-iscsi+bncBC63XVGIQQLRBDHZ6GEQMGQEFUTPQYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C784075FA
	for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 11:53:18 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id 41-20020a17090a0fac00b00195a5a61ab8sf3593269pjz.3
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 02:53:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631353996; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEKdd2WuD1zdJ6QN92nyF/3JMvH9eEEBNpM6tGvfk2TE4lPoLVJ15g0OfhMxKgQqwU
         HvCrF2BIl4NXwIKPhzvFV86hAttBc8FxtA/IfA44J4zkr/7nfDj1tGOuTVSK4KuiGa0G
         d7RByn/uEslCnZqDEqX9R7oAzQ6WuaamURw3ZYrONK5dxM4x37Ab71OznTKu32PbD1XE
         Aun9Rm1nN0baE/2j0/Dp6BikfCy5lvPbXlqItWzM3gs+3QChoS7R6jty4I7ezRAw6JPq
         J7qNcwD1LfvH1ZIVZjwFP/2qhsowWocKvyzdI7E6XwRSzH+MftdRY/9vP6033xTKrmE6
         /MkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=0/HgYuvhGoG7YdNUzzgbS9mmyDC8WlZyAG7bQg5GJSI=;
        b=tVX+x4iWZkzQ0QX7Ykx3aUmLzNsHuJChKWV/xR9JGXlcgIjGY5p2cI8wUCjstrreTm
         g+Ijk7tJFsV4AFZVMlPiinGASO2+S6VxK6IJgGuA98I/yVXngA10KY25KTjYWPWpDF+d
         bHQMA4zGyyDG0j9PLwTsJExhkcfWRLvm2IUmXwr4T1esctjDZMNlkfwtH+xi31PJXud7
         ZTOpf5uSlKG8VBieOTm72rTFPxa5TuRrAKLuyrTQOlvch69kz6EYwVz4Q+aXTjsgMGig
         C2I7KLIc7HHqSoAGzGQJUB4UPQmG6arsUPJnwUfv4zsN54cSa5wnxZoHA9jttPQax0jF
         ef4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/HgYuvhGoG7YdNUzzgbS9mmyDC8WlZyAG7bQg5GJSI=;
        b=AmbTjWKqog3a9nBs309CF+6z2OzKkIUn7UC260lhocRdlA4F9gjIroKUHA6iy+/S2J
         i3Y5+eO5m1blSxcsBJCUCwvBTihsp6FSL6/w5z6Y5xotI3sitn/wiBZblDGCjLO+rcOn
         Zv0/E85y4o3tdMIjVwc8IpHJ69NKZTlwgqOgC+ILEyCn6uKz8KawPpQ7a/DHGjOd7Odc
         PeTdQMLgOB0UiZteaLKpY8lhMl+jWybpI5tRpjRYTHv7lEODs414z5iethBuRDs3+TBy
         nJavdxCgLUrBL4q8yqEZ13Hrh3jIjxF23bwHY2ahZFoL1RSpC8i4ivPMZ0T51iLGRCxw
         APeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/HgYuvhGoG7YdNUzzgbS9mmyDC8WlZyAG7bQg5GJSI=;
        b=kXzbK5embyVaCO/8kObArMz2hRAv/SwYX/uu0Zm4xMxl2O5ds6wgTLSO9I+kvgHZvY
         M4qIzO5M8ZuHdrNAn9AgjxIOH1NtZ+/VOnxXCA8WOPx+t2wNKm5VUqnEt0ZAGheemcJM
         r8GNACIneSUJrnCQ7KzoZuTNq0z8sl+F5JKrUe/zoDdShDleWn4TabQ2go4tGKLwDrSK
         2vyAbUM35DVEVlseJIVeICHPNyDeHxvjwxbX9VZjOz/bQq9oj6+oQLuW5KYmDFUZUXwn
         AxqOx+3htpkzEpyXD6BWeHkf1+EZg6eOc0v0j3vhaREbuUVT1KWqAxOs90J6nshk1akZ
         h41g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532iab4xE3/lpVlj+svE5DIMVRFdoL4NGhsF3f4fZE2ihmG7i/tJ
	Y0mx08RGz+JUl323Imx2rdQ=
X-Google-Smtp-Source: ABdhPJxjg9I+pK9qNlcRCHTRX2SEgBVgbmgXRGlArC9GRGSf3QYwmrU5Pe5+2le2+K1W8NVeRXod4Q==
X-Received: by 2002:a63:e909:: with SMTP id i9mr1843824pgh.162.1631353996512;
        Sat, 11 Sep 2021 02:53:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:d995:: with SMTP id d21ls620942pjv.3.canary-gmail;
 Sat, 11 Sep 2021 02:53:16 -0700 (PDT)
X-Received: by 2002:a17:902:7145:b0:137:2e25:5bf0 with SMTP id u5-20020a170902714500b001372e255bf0mr1906121plm.10.1631353995928;
        Sat, 11 Sep 2021 02:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631353995; cv=none;
        d=google.com; s=arc-20160816;
        b=w295tnBnKcFn1UorDoSfrA1T0v/iBGH9IlhPLoZCC4h41sBuh78ldxHBWcKeh7H+P6
         Gg2u/yrSyPOyF/V5JzI4t9kaXUbDvxRRioBsWc3j+uPnE4vRYj70WqvThiZLhIcSZ8XV
         txSo4KvzRFvE9GNOrWPia4y2/q39WZTuJn58QgV+c5uZy0bQWy3fPIZHvnZ9tFRZ5EnT
         P38gZ87WnJA1q/qLTDn7yByAsrYOhWeu5Zr5DgOmiLBPA0HKIaUixOYOfdXWGRn0WoOj
         F/+q2pinlIt0BixR/8O39gIQrvks1DId+FW+b/hpBlvqYz0Sb8jWWfwy4Y1DGCHidMgW
         2U2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=6v/2DVZb9t41H9AGL3I+ZRd//iPSurp+lR2nBmi4sCk=;
        b=mJP4Sb6KsRBLv0RXVeJrJ4+qa48gvjRiHAkZednFrX8ugUOkfxTU8bW2G+KoZ6zosP
         Z20ainveVrvv5qxcHsRNGNaNehA6+i1pcpzHgkDQMAn/rHqwqglWHDCEkJwBALCKD7lq
         nJbBoCYR7OtKcB8UQKvmmn0pj++qD0GXbUYZN2Lo4P47JuyXoZBQriomhDIxuwym0miO
         n1DGyXg+yS6AJ7yHDzms2VDv4J4eFj9Qz04Hk/re1E9MmYRMFfPv7lLkOAEd2phAqlGv
         dvUtZoTLU5moeub5+ZC8syrFUNwdFoE+tjnDo4HT8YAlj9GbvwlhVsPyAJpoDz3bzWFV
         HYFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id y2si138278pjp.2.2021.09.11.02.53.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 02:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from 2CD-RMPB.local (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 1370B22012B;
	Sat, 11 Sep 2021 17:52:02 +0800 (CST)
Subject: Re: [PATCH 2/3] scsi: libiscsi: fix invalid pointer dereference in
 iscsi_eh_session_reset
To: Mike Christie <michael.christie@oracle.com>, lduncan@suse.com,
 cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
 <20210910010220.24073-3-dinghui@sangfor.com.cn>
 <302af74d-5b72-5b2f-050a-33f0978e321f@oracle.com>
From: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <2863c857-7121-1e96-0c28-d7f697b99ef7@sangfor.com.cn>
Date: Sat, 11 Sep 2021 17:52:01 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <302af74d-5b72-5b2f-050a-33f0978e321f@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpMTUNWQ00ZGkJPHR0dTU
	8ZVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PT46Qzo5DD4LAhxCGD48Ikg6
	I0owFClVSlVKTUhKSE5IQklJTU1PVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSE1DTDcG
X-HM-Tid: 0a7bd4456332d998kuws1370b22012b
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
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

On 2021/9/11 12:38 =E4=B8=8A=E5=8D=88, Mike Christie wrote:
> On 9/9/21 8:02 PM, Ding Hui wrote:
>> like commit 5db6dd14b313 ("scsi: libiscsi: Fix NULL pointer dereference =
in
>> iscsi_eh_session_reset"), access conn->persistent_address here is not sa=
fe
>> too.
>>
>> The persistent_address is independent of conn refcount, so maybe
>> already freed by iscsi_conn_teardown(), also we put the refcount of conn
>> above, the conn pointer may be invalid.
>=20
> This shouldn't happen like you describe above, because when we wake up
> we will see the session->state is ISCSI_STATE_TERMINATE. We will then
> not reference the conn in that code below.
>=20
> However, it looks like we could hit an issue where if a user was resettin=
g
> the persistent_address or targetname via iscsi_set_param -> iscsi_switch_=
str_param
> then we could be accessing freed memory. I think we need the frwd_lock wh=
en swapping
> the strings in iscsi_switch_str_param.
>=20

Thanks for your detailed explanation, I'll drop 2/3 and 3/3 in v2 patch.
I expect that the persistent_address issue be fixed in your future patchset=
.

Sorry for my ignorance.

>=20
>>
>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>> ---
>>   drivers/scsi/libiscsi.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index 712a45368385..69b3b2148328 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -2531,8 +2531,8 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
>>   	spin_lock_bh(&session->frwd_lock);
>>   	if (session->state =3D=3D ISCSI_STATE_LOGGED_IN) {
>>   		ISCSI_DBG_EH(session,
>> -			     "session reset succeeded for %s,%s\n",
>> -			     session->targetname, conn->persistent_address);
>> +			     "session reset succeeded for %s\n",
>> +			     session->targetname);
>>   	} else
>>   		goto failed;
>>   	spin_unlock_bh(&session->frwd_lock);
>>
>=20


--=20
Thanks,
-dinghui

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/2863c857-7121-1e96-0c28-d7f697b99ef7%40sangfor.com.cn.

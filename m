Return-Path: <open-iscsi+bncBDZIFAMNOMILNJ4RUUDBUBHJDIAJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C886747796
	for <lists+open-iscsi@lfdr.de>; Tue,  4 Jul 2023 19:15:38 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 38308e7fff4ca-2b69b3ca25fsf51018581fa.1
        for <lists+open-iscsi@lfdr.de>; Tue, 04 Jul 2023 10:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688490937; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oad9pgu8ZWWDGeEjP0tAvbbbqSd+htqZ/ZsanzlNsMZdM/dXxV9fe2Yp0YkOlyY/4z
         q9GVXH7NIjnSYY8OlU3skn4zZ9NVF4OLKKWY5qixcKHBJmzuYroSeL7TV8vazim/WXrd
         eMf556GLpWJBpRG0zEVDUwTkDcKnxuIhpH0qNY8GnXnORsNriSncyufefSkBAhObIO9p
         am6FyjNbW53s6ZRuVgNWbVj3xXtYGJ9QYypieAZDqEK2WItrO7aAE7DAq1zS3GI5wZfp
         SrI5uVkFZy+0sEv2NcUf2JRx8kGgQNMXoWxsAusfcLa1tipKKW2awofaJr/4j4T36SAV
         Mcxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:ui-outboundreport
         :content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:sender
         :dkim-signature;
        bh=/TXPlcfCfSu3LVF0Dlpc3saa00nQXVvYGbWzP2bvMMM=;
        fh=yHW31h6KsXCXJ7IxXkaL6xIVRcrvuDQUUzCd6fv+vgI=;
        b=Doz0znMfdzZKJevVMeOEkunzVIkxlpxsbTn6ReESX3lbGCK6Bf8ruPbGOA20gwP2WU
         PQV8mSr8yt2Gpvi7eEFYWR9d9m2mMFIHhj7k6rUDAZ+0aB3L5nyOjTZ5x0JmT0gWV6fx
         wC6Wt5/5ZaZDJUMOUEroHbNBecebwIjHJpXUwt6Z4+rHFJrZFBPWZVIx232j93JZjDdf
         4Hgd+AE3jgfPwM9wqACqRNYyUJ/aByfI+ylslnkSvWnEhI/XPYDcaUts1WQp9LkIXy+O
         6h2Rrzy/H8ZKjIPhfkoRX2WDufGU/g39trL5Q4JTJKKyymN8uFsffXHjB0cjhjtMCWVI
         e7Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=VcizYKKc;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688490937; x=1691082937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/TXPlcfCfSu3LVF0Dlpc3saa00nQXVvYGbWzP2bvMMM=;
        b=dmlOBdVyx19FgzdH7gLeGuMveiARzIfVJonHyFAKzJr4DUB05+BKHaQxrkd4iQkPgn
         cfrmGE5oFO9aWxBVTs+fzX2kD9GVbwQZcV9nG62MyErayEEGwqRUS5w2r5wYyDILXZQQ
         mP2H6evOqhBIKL5W+Oi64tksfuE9IQ50A/h44qtuIspm6e0ZpbR8eLLSfVhEuWeTZPOQ
         Z4TyD+QA68bKFgpxGxD4OaOr8NMVWRpzP/5yBfFpJyrbiica0qV2bcQ+qkVGU9buPwWl
         T+ABXfgcupp+6rYFL9XJLXoXr+MCsyha+OzOM6kPs1YVstZ0eWxj+bakIAOL/gWb65Jg
         HF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688490937; x=1691082937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TXPlcfCfSu3LVF0Dlpc3saa00nQXVvYGbWzP2bvMMM=;
        b=HFpNS/t1fpQ+J4aVV0fXG866J7+iBdNQH9eeiKJ1+YqAM8KmjVkYKvRj+yOK2CSFtR
         ppqhtalhZaNfyxi4ccxfaIF67XjHuwvh/rO34B+nR32FEt8wxVEpNkghkfL8CUvY4Xjm
         8uRtAet4/OmUJieg0BdFUi2oVKZe5J9SNrsu3KyOHZQg6cKU1gajtKVzXthKzLu+Z9jm
         6AfcR+RA4BnoNOm3nW/ZeqKV510elDDOr44qLdKikg2aiF9tqbevtj7J0QZ1U5cA546M
         DmrKiDCcnpcQcNjd0S6gTt63HOnXrmkAuo/JkfG3W0aMVzYwiu95dyXa2ECyreMi6L3j
         +xew==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLYFuDBaMXnQvZZv3jk/AtcB3Dy0d6r+P69MgHXyl6kzn2NvMMsb
	um67cAYNgozyUIzI53M/rts=
X-Google-Smtp-Source: APBJJlEdnMNIH16qP7dRGJO4OAP09Sg1sR2fSxyk2VwNWQsG4EiKXub4ShSOjBMLPVhZLhYaLb5gOw==
X-Received: by 2002:a2e:860e:0:b0:2b6:e2e4:7d9a with SMTP id a14-20020a2e860e000000b002b6e2e47d9amr5742186lji.38.1688490937053;
        Tue, 04 Jul 2023 10:15:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:a787:0:b0:2b6:c0f9:5044 with SMTP id c7-20020a2ea787000000b002b6c0f95044ls2759052ljf.0.-pod-prod-05-eu;
 Tue, 04 Jul 2023 10:15:33 -0700 (PDT)
X-Received: by 2002:a05:6512:1590:b0:4fb:7666:3bbf with SMTP id bp16-20020a056512159000b004fb76663bbfmr11428438lfb.26.1688490933687;
        Tue, 04 Jul 2023 10:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688490933; cv=none;
        d=google.com; s=arc-20160816;
        b=DDr2h0J5wYRC0H4vMlXFaugjShgJIx7zFMXrnVpiLtfbVmFMUQj9gCfYw7vjNZeF9P
         1k4Uu2Je3vzqp6W5M4qeRsjVCGT5O+BmslhYgzxRe4/6bL07o/kRl3t0CMMfi91mfTH8
         TAOOKOnt+wMD8oe5ib1pAFBW4Zf730QXIf7ZNZQDl284bG3NRITAOScP1HCZBQVF2557
         Gm95vkkANSore9Al6+2xZ8h5pVJpdk1Apc+1CLJVW8//akyo8h85Zb8GEdknsRs6raUv
         l2qgX1ngvsulAbNy1OZTr2KbR/E8h82jja5cr3F88aJL2rg1uu70e2eACMJueAPr/3Kj
         PvIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=ui-outboundreport:content-transfer-encoding:in-reply-to:from
         :content-language:subject:references:cc:to:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=p23RyiD6L3vShcDGLtMMFy2RSVFmyLCKeybi3Fm72kM=;
        fh=SKqLmUKsMvj0y3pehLWbeKly3WMHNkz/wiq2lvDufnc=;
        b=XVNS6kOvltWbG3bvALRjcGTGJsjrbQLW/zmhu1+d9ObHgshscgkqt2xp2IjBcKJkHb
         317D5UY5LFXHUOp9g5WdEft+tkD47VYKZtXbqNyobYGXCsmuKB+bA3urHehZtazFkarG
         88VeUd6kZ8wqYmBCCjAnM0i9G6WQ5q7f2jyE8fXxyTtSKncnY5PVNos/ubUZwxjyKZ6V
         OJJ6uwPOIgLNONe7DpPYyNs13qE2mCBDHQuJDzI31KOwmVneeVgaLO/ACW+fHk7bnvJN
         4jfQCeAQ9oint6bcwAIAun5y1Bq25CU1vYTdDQ2aOXIFOmdYhejrXikJMNUgAuBVl0f7
         ibhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=s29768273 header.b=VcizYKKc;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=web.de
Received: from mout.web.de (mout.web.de. [212.227.15.3])
        by gmr-mx.google.com with ESMTPS id ay4-20020a05600c1e0400b003fb415dd573si1320899wmb.2.2023.07.04.10.15.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 10:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as permitted sender) client-ip=212.227.15.3;
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.83]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M1rPI-1qIwY61QZk-002Zxu; Tue, 04
 Jul 2023 19:15:30 +0200
Message-ID: <58501a73-f62a-47cd-f478-a80f85d45cbe@web.de>
Date: Tue, 4 Jul 2023 19:15:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Rock Li <lihongweizz@inspur.com>, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Chris Leech <cleech@redhat.com>, "James E. J. Bottomley"
 <jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Mike Christie <michael.christie@oracle.com>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20230704111521.580-1-lihongweizz@inspur.com>
Subject: Re: [PATCH] scsi: iscsi: fix stop connection concurrency issue
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230704111521.580-1-lihongweizz@inspur.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:UNPKhqHqljp/78NMfhpAtPzPZvmLbTUqL91WqNTpq0k/N8AJJcE
 ksfOkQ4GpAah/2uP08Oi9xXlgvyQ5rN4KmLfmO9e5k7ANp2USiUOYHJaRUFXEUP9eSOOrU8
 KXJ/B5d8+0Cm3IwCQSCedY1iVnkZsGsNG60hS+G1g4MdsMtOmnDuU+s6zYoDxCgTidUayEU
 c2Hg7Uiv7kNDYwUQgEcow==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4F2lR23wYD8=;CWu9TYJwOnwrg6FanmdeKQnYT1O
 EWN2eiOZxBKT+N9RwQNAn3LLZcpLZFg4ezVGPenmZcMvNWo/IPXRLJdS5xha5cqXsCqKs5wcG
 iGxibqRYnCcPmUD8Z354ycmzwBr+TfIL1jRKc8SZ8709415VxItBVPG4fzAUDJVJWz1lD3esD
 4K713Gh8CniAo+ybVOyFZEvGLcDLFHHoyXmn77N05VY6o4se5BJenoAvAA1Eqgzr715qnicZb
 QaiRBNPg9En+8e7tLvzaQnWKsP3IaAEkNC9FG7ft8J7VONjNZ73urQHdBCePUZdpdx6jhjctW
 nUXqsLPvkIU7+V7bovGAeb4RbG34ZqPSIE7zp7YLlRmDqBZ37m2yybIVqM25POxxNQ66oOezN
 M0kN6Z1NRLBZ5gJL6waVmMWVn5N85T6E2TTdmY1xDYJyY90dh3SSZjiH7K7S+lAVt9CfKcxB7
 Zl37bMO8o47KBt65llSvJgQAeXZuEGINaEgVqiZzY+QYdDkHhmXKmRsoXzptTixFYkwrriUW5
 W5MhFVoYIii5LAOw8gZmfZoTyV164STmUgFfYqmJBd45Z5ToT7HREKRDJy9XzczQESmK1ZJiw
 9TRe5OZ7VKATIivH8eVlH49sWYMMrTrUMRAnT0LUnxp7sRHFXEpbmmsylsuKVZ40FpGdlNd8F
 ApmCWpN+RoiSQe+07/mEgUWqXU0MSHQ+yLVCllk0jb+W3EH87JG2VPoXfcNM83L/Mzx/cj3yN
 Ub7OeSO1y1j8kFYCfJs2A7WCaRl59dpI9m5VYA26MfIvZr6cSmkoLM+QV5nVDzhK5+4wZ27/n
 6sJ8qKfnR5WUpKT15LQUuaAqVj3jPqXCSoJWnaW/eXZ0FP2iK1Kf7ISQrwmIi9bHhLEIZSMFP
 LwTBfcGMbUiHRRUdcIeHohUfEGelGtPUA7zj3wgORhgxPDXQKFraJepShfOLI3K5emeXSsmNN
 XtkjqZz0jnjdeeAgH02EBqJNQH4=
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@web.de header.s=s29768273 header.b=VcizYKKc;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.3 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=web.de
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

=E2=80=A6
> After digging the vmcore file, a concurrency scenario was found:
=E2=80=A6
>       iscsi_stop_conn        <- Excute cocurrenty -->      iscsi_stop_con=
n
>
> iscsi_stop_conn will be excuted cocurrently in different paths.
=E2=80=A6

I hope that some typos (in the referenced subject and change description)
will be avoided for the final commit message.

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/58501a73-f62a-47cd-f478-a80f85d45cbe%40web.de.

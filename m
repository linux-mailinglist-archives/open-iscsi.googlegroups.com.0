Return-Path: <open-iscsi+bncBC7KRMXASEIRBGXJZTCAMGQEWWBDHYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E31B1C491
	for <lists+open-iscsi@lfdr.de>; Wed,  6 Aug 2025 12:55:29 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id a640c23a62f3a-af954fb1c4fsf240103366b.3
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Aug 2025 03:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754477728; cv=pass;
        d=google.com; s=arc-20240605;
        b=dtPKN1vGeWlQfaSGnZZL8ZZlhhNKE6IwJPhSyu1BfAJnwVBSQ0lgsPLRS6eHsbMLQF
         KbaMchxHgrZYYA2xBoFgiWeM1cJ9C6JF071tSDS4h1o+y/mWhMtPAkyDScxBfa5GbB13
         ijmqgu9A0qt1wNs+XDqPRJlSmxDphPZT+KZ6v+tomWC84X+nsheelpV1GEyzFgt25hvO
         8SQQbbCow1MCTgDJvYM5RjT3gVhOqHHOFk2do0ri5tGje6Fw6c9vmoAFpKe/7Cpo6PMT
         sh6l3SHr6ZR/+kQitSEPrSxsz6J/aphgzBkrYUWfz/M3stjT4BKzhSs0qWZTohh3PdG9
         hYYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QWw02zZv9X+NsrzhpDbuNF/lcEJJx4u0GE8b4HTda2c=;
        fh=v07ELdIPx2+cP8SQ2JS8+OgOeTTd79i64dqMXpp3Cl0=;
        b=LphtOUZojPTKgwiufxJrHoYu1jF5jPng5km1uOD8hntjGOid7Z/mEEaqwLim90n6bd
         VYXQKk/zP9U4ZlR4aZPigT9JOVxIa4607/szJ25gGH6qqVRkyFTSFUICuTuK7P9mTvXf
         cOxJIBe5Hwj6SfB0PPA2rSz5fHfVneksNw19nFyWc8gJxEiC8ZXxYVMDAhu5EfOkdWQE
         QQMPrxvnOyZ8YGmv8Hm3L6uYm+yOn/MEjqxKIgTyH/YBBcskeHSCdZ1P3/4HNAbtuHez
         /NtWeYOylGsmmOeuanQrtWr4XL7F0ThwM/GBpkIDJY8Hn0NhA/3uz45h8RxKYbAHqKcY
         4j2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ij5qTYwp;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1754477728; x=1755082528; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QWw02zZv9X+NsrzhpDbuNF/lcEJJx4u0GE8b4HTda2c=;
        b=oSfE9FfLH4SlsnBKgwqnMkfBczqJwKdK4u2pH5KtLnEQLIS6StxoWC6vWPVoOkmiQz
         WIRzsg/bCwy0h/G50ZFNiNUalP+feWYVQSyqXRviU4XKfWIZu662s4et87ZBXHF1X6Ms
         Oxzbx6jPdEBMbkdqb6CYUwvPC4CfLEWLEw9OZrc6xcuDgksLCwllFr5pTxLlDN8+FTWt
         mvY8fvCRKNZjIXJx35ciMv609gud89tViapXMrV8y4865i+U14hmKEDo/VLgVRfWDP8M
         g67wkdMgV83V3IDZUPcNQ2PEfVwQKh3m1MjDxgxw4WUoKk1we6CLhCCO9D4NZ8/qgc9j
         KhPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754477728; x=1755082528; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QWw02zZv9X+NsrzhpDbuNF/lcEJJx4u0GE8b4HTda2c=;
        b=HWTz7g2d6GotarDQZcex3loWMKJzIyHZV7kImSowMsjXAQMCXh/s4IszsSBjvMPc+l
         8V5QWL+UOzQVmw9wFNuu06FWPh+ie9WrYzAqiztQQV3AUQHyyd48U35/n0SNO7hUy1/0
         /81fK1IOiU2cwZST0K+IZufnJXB/MvRR7Bkiz6VNWpyUnW30wfDbt97oknisCTs/JkLD
         7thjDq/Gmc2SGp58vO1/jAb6IUv8yobPsSxK2+P8IkcedTT7QqaeNLyfUYMmBrk7Y+5x
         Wn58/Z/YRFe7zHSFLjoblLT5jBvEMomiWy8rwQObPlgA5LHm55XvOGVDNwcOmg+aAVp2
         2/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754477728; x=1755082528;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWw02zZv9X+NsrzhpDbuNF/lcEJJx4u0GE8b4HTda2c=;
        b=fK2ZOqPML7a39rt3X6C8SoCheyy3W98okHS/L0MeQhdvsjdMWhGrnkanE1oxiMFQB0
         W0TzXuzkmoM08qa+EJMf9UZvoHOKc+DVB7MmvCLYhBCOEuyoZcjpKTGmPB245ge4WjL2
         7KfyzS6Ko1Pk0jGslYrCcaP9o7X5ivqIr5EmueciDx7puUaCDhhKANdYFl8xzdvlxKX/
         UmTPu565m14O1SzSkJ0NlKXXX5REqdg+mMSdXxWPuI9Q6GSABpZym76DV0Cfj+6Fz1bk
         gvgEZn3f+Mg1P5syj4DRE6m63aDPMvcWP/n7hizZWqyN6Rk/LLa7m4Ws9TZn+wiUK++A
         kaew==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXL5+jakKUOz6CCciqcgKf+32B97e31lAPvENwhu5PlT6DSsicaG6GnVMR50fVLCYg1vQRK5w==@lfdr.de
X-Gm-Message-State: AOJu0YwmACeT/fH03iSXW5/3x9wkOvjBvwxPnC+JVNGbo4LjeQD2bL9z
	qzE63uzhmY9plKf1ujRYm0pChNQgRIdgvZLuPZQRU36UPxyOWs6bPSFZ
X-Google-Smtp-Source: AGHT+IEOOq6Lk5Vop0X/xf2UNRzPsdcX79AdIAtSc67ClyDDX8DVbsCYupPkFPfIn9zk1EBjH6tXsQ==
X-Received: by 2002:a17:907:3c90:b0:ae0:a116:b9d3 with SMTP id a640c23a62f3a-af992c911c8mr171233666b.60.1754477728219;
        Wed, 06 Aug 2025 03:55:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZfm9YCA1j/Hsy9lapg0oXAJSLGZ1o+Zp0Iz9CF3m4KPdA==
Received: by 2002:a05:6402:5206:b0:60c:5a6b:2698 with SMTP id
 4fb4d7f45d1cf-615a5d8f065ls5137073a12.1.-pod-prod-07-eu; Wed, 06 Aug 2025
 03:55:20 -0700 (PDT)
X-Received: by 2002:a17:907:7b8a:b0:ae3:4f99:a5aa with SMTP id a640c23a62f3a-af992a610eamr148966966b.4.1754477719808;
        Wed, 06 Aug 2025 03:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754477719; cv=none;
        d=google.com; s=arc-20240605;
        b=VCXeJAdvRDviHhRDXoPA+TBBHQjYWfT2cPOlBtxZuJ/8wMVgqemDyV1WVYgTUITSfQ
         Qlp4pmd/9XoPTLHYv8UgH38R0HcZnz7hHCDaY2tEzgjq0duyBQiXnyrBwjVfaI5zdCfB
         awY4hBpVnWWV07YKhT5ilFDslHfVZuA3MXAwscZMgBOKQn26XcL8x6wxYqd5XlXrj5vh
         dTOF3kA2OVRjSdY1v8bOvQ3ddg51uwFV4OVnYSi/1GUpN8V///6PkKuuKEVhiNPwMKpA
         eInxB1Piqzo2AzfzcS+D9clcRz3SBqzW97G4Iz3k61L/shNgD9nZVug+a/TrsZFAw+GY
         z/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=MnjVPC6kQR+C0Szj9cs/eD4BRbZQSG7zZTEWF2+RUpA=;
        fh=brrs0Z/5hLqg+ffWd8QB4bJLZSHNZrCCuHP+x43PcwY=;
        b=MEXCtrSCalmtrlykEF4QtS/NlENtUHgWvohhNhss9bDgNFTJyG4QpJlHM2u/beayWL
         +eaQm+zHaQXTQnA53pIwNXWmiMyFYO+8us5Lwaen59q71ZRnxO+BZqz3wy0dE/ModLJB
         hCWPmNXQVgMwbnuo9ZHYieqrl2pimyy63MOd/xQ5sBxiQV4Ky5uKt6IH7o2/P/cckvMn
         ADsS5ENkFS2i9FrK6zTtzH0LXCyd1tmceskRLgnnreh6GcZonF9u1hlmJsSUBbIh5+Iu
         uf9iMrCTk5DcOjrfqkn0ym3sHm4JB1egeVaynjLNbFL/DIUy+shBh13CTTV4p52/00M3
         91eg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ij5qTYwp;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id a640c23a62f3a-af91a0f4b9esi37629166b.2.2025.08.06.03.55.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 03:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3b780bdda21so4561919f8f.3
        for <open-iscsi@googlegroups.com>; Wed, 06 Aug 2025 03:55:19 -0700 (PDT)
X-Gm-Gg: ASbGncvDuQzOcEL2qAK17FmHDGA0dXOFO5gGmSVmQRys/oxTALQ17XUpc3kyLb02kot
	Yg94gH6tRHgokYY+1c3Q9OeMjz+0FNcu5TyQlncIh+e5eFnoEY4MHUB7CYJVzbOFdr6IaJo5Y9d
	hvPsCLxRRyg58hcR3Gy7t1q4OgUPK/7O+yP/fF0E7JNmsXKKNRUOzTtQXl0iPpRzzyDaPi9lpjm
	JFTvqA=
X-Received: by 2002:a05:6000:2893:b0:3b5:e084:283b with SMTP id
 ffacd0b85a97d-3b8f48ec782mr1745951f8f.17.1754477719032; Wed, 06 Aug 2025
 03:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw@mail.gmail.com>
In-Reply-To: <CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw@mail.gmail.com>
From: KUMAR NITISH <csnitish521@gmail.com>
Date: Wed, 6 Aug 2025 16:25:07 +0530
X-Gm-Features: Ac12FXyTnAs-v1f9ZFislHuTH6bWXMwKz0g0vu4Vx565SbGbw5NhYWNhCOj4C64
Message-ID: <CAGEDioOELLDQhP7ZxaJ03NNFJKcEG8WH9b=W+am3NFuthewFDA@mail.gmail.com>
Subject: Fwd: Hashing algorithm used with iSCSI for CHAP authentication
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000359c9e063bb02d17"
X-Original-Sender: csnitish521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Ij5qTYwp;       spf=pass
 (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::42d
 as permitted sender) smtp.mailfrom=csnitish521@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@googlegroups.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--000000000000359c9e063bb02d17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ping!
If anyone has context to the query from the email below, please reply.

---------- Forwarded message ---------
From: KUMAR NITISH <csnitish521@gmail.com>
Date: Mon, Aug 4, 2025 at 6:32=E2=80=AFPM
Subject: Hashing algorithm used with iSCSI for CHAP authentication
To: <open-iscsi@googlegroups.com>


Hi,

This mail is regarding usage of algorithms SHA1, SHA2 and SHA3 with
iSCSI for CHAP authentication.
RFC 1994 mentions support for only the MD5 algorithm, I have copied
the RFC excerpt below.

"The Algorithm field is one octet and indicates the authentication
method to be used.
Up-to-date values are specified in the most recent "Assigned Numbers" [2].
One value is required to be implemented: 5 CHAP with MD5 [3]"

Clearly the RFC does not mention other values that map to SHA1, SHA2 and SH=
A3.
But I see open-iscsi and scst-iscsi implementations have used values
6, 7, 8 for these algorithms.

open-iscsi : auth.c
        AUTH_CHAP_ALG_MD5 =3D 5,
        AUTH_CHAP_ALG_SHA1 =3D 6,
        AUTH_CHAP_ALG_SHA256 =3D 7,
        AUTH_CHAP_ALG_SHA3_256 =3D 8,

iscsi-scst : chap.c
#define CHAP_DIGEST_ALG_MD5   5
#define CHAP_DIGEST_ALG_SHA1  6
#define CHAP_DIGEST_ALG_SHA256  7
#define CHAP_DIGEST_ALG_SHA3_256  8

Can someone please share details on how open-iscsi and iscsi-scst
implementations decided to use these numbers?
Is this covered in any specification/RFC, how would targets or other
OSes know the value to be used?
Please share any document references.

Thanks,
Nitish

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
CAGEDioOELLDQhP7ZxaJ03NNFJKcEG8WH9b%3DW%2Bam3NFuthewFDA%40mail.gmail.com.

--000000000000359c9e063bb02d17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ping!<br></div>If anyone has context to the query fro=
m the email below, please reply.<div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded m=
essage ---------<br>From: <b class=3D"gmail_sendername" dir=3D"auto">KUMAR =
NITISH</b> <span dir=3D"auto">&lt;<a href=3D"mailto:csnitish521@gmail.com">=
csnitish521@gmail.com</a>&gt;</span><br>Date: Mon, Aug 4, 2025 at 6:32=E2=
=80=AFPM<br>Subject: Hashing algorithm used with iSCSI for CHAP authenticat=
ion<br>To:  &lt;<a href=3D"mailto:open-iscsi@googlegroups.com">open-iscsi@g=
ooglegroups.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><pre role=3D"code=
">Hi,<br><br>This mail is regarding usage of algorithms SHA1, SHA2 and SHA3=
 with iSCSI for CHAP authentication. <br>RFC 1994 mentions support for only=
 the MD5 algorithm, I have copied the RFC excerpt below.<br><br>&quot;The A=
lgorithm field is one octet and indicates the authentication method to be u=
sed. <br>Up-to-date values are specified in the most recent &quot;Assigned =
Numbers&quot; [2]. <br>One value is required to be implemented: 5 CHAP with=
 MD5 [3]&quot;<br><br>Clearly the RFC does not mention other values that ma=
p to SHA1, SHA2 and SHA3. <br>But I see open-iscsi and scst-iscsi implement=
ations=C2=A0have used values 6, 7, 8 for these algorithms.<br><br>open-iscs=
i : auth.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP_ALG_MD5 =3D 5,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP_ALG_SHA1 =3D 6,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 AUTH_CHAP_ALG_SHA256 =3D 7,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP=
_ALG_SHA3_256 =3D 8,<br><br>iscsi-scst : chap.c<br>#define CHAP_DIGEST_ALG_=
MD5 =C2=A0 5<br>#define CHAP_DIGEST_ALG_SHA1 =C2=A06<br>#define CHAP_DIGEST=
_ALG_SHA256 =C2=A07<br>#define CHAP_DIGEST_ALG_SHA3_256 =C2=A08<br><br>Can =
someone please share details on how open-iscsi and iscsi-scst implementatio=
ns decided to use these numbers? <br>Is this covered in any specification/R=
FC, how would targets or other OSes know the value to be used? <br>Please s=
hare any document=C2=A0references.<br><br>Thanks,<br>Nitish</pre></div>
</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/CAGEDioOELLDQhP7ZxaJ03NNFJKcEG8WH9b%3DW%2Bam3NFuthewFDA%40mail.g=
mail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/=
d/msgid/open-iscsi/CAGEDioOELLDQhP7ZxaJ03NNFJKcEG8WH9b%3DW%2Bam3NFuthewFDA%=
40mail.gmail.com</a>.<br />

--000000000000359c9e063bb02d17--
